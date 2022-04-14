#!/bin/bash

echo <%= p('erlang.cookie') %> > /home/vcap/.erlang.cookie
chown vcap:vcap /home/vcap/.erlang.cookie
chmod 600 /home/vcap/.erlang.cookie

# RabbitMQ
export RABBITMQ_HOME=/var/vcap/jobs/rabbitmq
export RABBITMQ_CONFIG_FILE=$RABBITMQ_HOME/config/rabbitmq
export RABBITMQ_NODENAME="rabbit@<%= spec.id %>.<%= spec.name %>.blacksmith.<%= spec.deployment %>.bosh"
export RABBITMQ_USE_LONGNAME="true"
export RABBITMQ_LOG_BASE=/var/vcap/sys/log/rabbitmq
export RABBITMQ_MNESIA_BASE=/var/vcap/store/rabbitmq
export RABBITMQ_PID_FILE=$PIDFILE

# Erlang
export ERL_INETRC=/var/vcap/jobs/rabbitmq/config/erl_inetrc

# Elixir expects utf8, locale must be set to UTF-8.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export PATH=$PATH:/var/vcap/packages/erlang/bin:/var/vcap/packages/rabbitmq/sbin

