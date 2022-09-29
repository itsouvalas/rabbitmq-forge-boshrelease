# Bugs

* Addresses issue where deploying a rabbitmq cluster plan on a network different than the default one (rabbitmq-service) it would fail with `nxdomain` on rabbitmq's control script start. @itsouvalas

# Features

* Rabbitmq's cluster certificate is based on the blacksmith_services_ca. @itsouvalas