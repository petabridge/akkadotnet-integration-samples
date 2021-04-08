@echo off
REM deploys all Kubernetes APM services to their dedicated namespace

set namespace=akka-monitoring
set location=%~dp0/k8s

echo "Deploying K8s APM resources from [%location%] into namespace [%namespace%]"

echo "Creating Namespaces..."
kubectl apply -f "%~dp0/namespace.yaml"

echo "Using namespace [%namespace%] going forward..."

echo "Creating configurations from YAML files in [%location%/configs]"
for %%f in (%location%/configs/*.yaml) do (
    echo "Deploying %%~nxf"
    kubectl apply -f "%location%/configs/%%~nxf" -n "%namespace%"
)

echo "Creating APM services from YAML files in [%location%]"
for %%f in (%location%/*.yaml) do (
    echo "Deploying %%~nxf"
    kubectl apply -f "%location%/%%~nxf" -n "%namespace%"
)
echo "All services started... Printing K8s output.."
kubectl get all -n "%namespace%"