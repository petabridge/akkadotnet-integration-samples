# Akka.NET Integration Samples
Samples for demonstrating how to integrate Akka.NET into other popular OSS and .NET technologies.

We have a number of other repositories dedicated to learning [Akka.NET](https://getakka.net/), such as:

* https://github.com/petabridge/akka-bootcamp
* https://github.com/petabridge/akkadotnet-cluster-workshop
* https://github.com/petabridge/Cluster.WebCrawler

However, the purpose of this repository is to demonstrate more "real-world" integrations Akka.NET applications might have or be exected to have, such as:

* Interfacing with other messaging systems (Apache Kafka, RabbitMQ, Azure Service Bus);
* Being deployed alongside or within popular .NET technologies such as ASP.NET Core, SignalR, and `IHostedService`; 
* Doing all of the above with full observability support using [Phobos](https://phobos.petabridge.com/); and
* Deploying and hosting these solutions inside a real-world-ish deployment environment, namely Kubernetes.

We are producing these for the sake of all Akka.NET users and Petabridge customers who are looking for examples on how to bring Akka.NET and Akka.Cluster into their business alongside other tools and platforms they currently use.

### Phobos Support
To build these solutions you will need to [purchase a Phobos license key](https://phobos.petabridge.com/articles/setup/request.html). They cost $4,000 per year per organization with no node count or seat limitations and comes with a 30 day money-back guarantee.

Once you purchase a [Phobos NuGet keys for your organization](https://phobos.petabridge.com/articles/setup/index.html), you're going to want to open [`NuGet.config`](NuGet.config) and add your key:

```
<?xml version="1.0" encoding="utf-8"?>
<configuration>
  <solution>
    <add key="disableSourceControlIntegration" value="true" />
  </solution>
  <packageSources>
    <clear />
    <add key="nuget.org" value="https://api.nuget.org/v3/index.json" />
    <add key="phobos" value="{your key here}" />
  </packageSources>
</configuration>
```
