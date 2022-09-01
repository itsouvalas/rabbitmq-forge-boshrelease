# Features (standalone)

* Certificates using newly introduced blacksmith's CA - @itsouvalas
* Autoscaling based on rabbitmq's queue depth - @itsouvalas

Cloudfoundry uses [app-autoscaler-release](https://github.com/cloudfoundry/app-autoscaler-release) to dynamically scale based a number of collected [metrics](https://github.com/cloudfoundry/app-autoscaler-release/tree/main/docs#metric-types). By taking advantage of the [rabbitmq-metrics-emitter-release](https://github.com/starkandwayne/rabbitmq-metrics-emitter-release) the application can be scaled based on rabbitmq's queue depth.

# Chores

* CI pipeline fix - @christian-roggia

# Documentation

* [Access Rabbitmq Instances](docs/rmq_access.md) - @christian-roggia @itsouvalas @xiujiao

# Packages (new)

* [rabbitmq-metrics-emitter-release](https://github.com/starkandwayne/rabbitmq-metrics-emitter-release) along with its dependencies 
* [bpm-release](https://github.com/cloudfoundry/bpm-release)
* [loggregator-agent-release](https://github.com/cloudfoundry/loggregator-agent-release).