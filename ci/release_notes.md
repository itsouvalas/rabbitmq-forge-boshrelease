# Features

* Expects `rabbitmq-autoscale` as a distinct feature from blacksmith-genesis-kit deployment to enable autoscaling based on queue depth. @itsouvalas
* When `rabbitmq-tls` is used unless `rabbitmq-dual-mode` is also used it ensures communication is allowed only through tls. @itsouvalas

# Chores

* Credentials on blacksmith UI and those provided during bind and service-key include endpoints related to the features selected. @itsouvalas
* Job's templates are updated to be populated only when the corresponding features are selected. @itsouvalas

