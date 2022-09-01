# Accessing blacksmith deployed rabbitmq instances

## Grabbing Genesis information

As in every other Genesis kit, blacksmith information can be queried using `info` followed by the environment name, and in this example `snw-itsouvalas-lab`

```
genesis info snw-itsouvalas-lab
```

```
Verifying availability of vault 'lab' (https://vault.lab.starkandwayne.com)...ok


================================================================================

BLACKSMITH Deployment for Environment 'snw-itsouvalas-lab'

  Last deployed almost 3 months ago (01:47pm on Jun 10, 2022 UTC)
             by ioannis
        to BOSH snw-itsouvalas-lab
   based on kit blacksmith/0.12.0 (dev) -- local file specifies blacksmith/0.12.0 (dev)!
          using Genesis v2.8.4
  with manifest .genesis/manifests/snw-itsouvalas-lab.yml (redacted)

       Features external-bosh
                rabbitmq
                broker-tls
                rabbitmq-tls

--------------------------------------------------------------------------------

ca certificate
-----BEGIN CERTIFICATE-----
MIIFSjCCAzKgAwIBAgIUGUmweMv7NpkQv7TRqTsb9ZIqlm4wDQYJKoZIhvcNAQEN
BQAwHDEaMBgGA1UEAxMRY2EubjQ3NTM0MDc5MC50bHMwHhcNMjIwNTA0MDkwMDM4
WhcNMzIwNTAxMDkwMDM4WjAcMRowGAYDVQQDExFjYS5uNDc1MzQwNzkwLnRsczCC
AiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBALJwhWQWyLpHHbK5pp+fOq1R
+w0PAcMU5/bJ0+ZCd6bPJLhBYkm10cqVNqDeuJL6rZ8QZCa4PIJ7cib2+F+93SH/
/HzAPYCIrIrU9WQn4EkCSF1659F2V0+F4DCOJUm/HA00uFCvPnU6xvA6j/bbTYdR
dS5FFP2Gtzhk4z2rhGreItPY+nB3hIxooSPMpxV01gH6ia3EmZoqio+DNZHSKZvF
kfKrD5JSXJ2NSRqjZ78I7H2eq9H1sfiM2atCBMc6XsmJEXgNDtuP7C/RJpsa8jjK
efcrcs1RCLMBnPz0eSeGFSksUlcSVkokekSlfXMq8LWYHazpzrXTM5tGhvqMBKV3
gOLPxV0slrrDpXisd0iof4E8Q4KQKFAGVqzh7t8HSIFy/9Vi9TBNfSs7PkO5Sxw0
nN+Tnqm87xRhnE5NyAWSNVnruPAP/4C3DooHgSVk8eCfwGDrhrJ5KoHJ8FB+vfIn
bBlIz3nYD3jFZgJZ0G6dGIpxYcxRGsv9fCuKGuTV0Jd6gwEHl9FeQZNVXkvMPAPw
jUweUW+fhaRuEYpWmJDR/vFf9UrK2Nj5K2WtypRFcHk8bx3matH58R39UIx1WZN1
oFLFxDiZAvS5KjZ2d1sm+RziXXNrWwrkpW0YMxFUbV3KrvXPuttJMcXMK4vFa3KK
vX/a4k/cFlQK8UevO2gxAgMBAAGjgYMwgYAwDgYDVR0PAQH/BAQDAgEGMB0GA1Ud
JQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDATASBgNVHRMBAf8ECDAGAQH/AgEBMB0G
A1UdDgQWBBTQK4E+FvokEA2pDEQoQOXs01hTjjAcBgNVHREEFTATghFjYS5uNDc1
MzQwNzkwLnRsczANBgkqhkiG9w0BAQ0FAAOCAgEAUfpBu8ZhR6Nv/6l6mmC/lWE3
6g5ZBcZNKV3HM9cJRuNfYEaXYmqBM2P5MYe01gJsvT7wEBbcTocuEHy8BNYBlE2h
KQ1JiV5uBupRRcgR3Prr2M+z6Z027fhqXFicpaikQqI6AMgmQEGlGxTzTrakyT1S
CC6yJ2wXFJNoRLtftxNYLT1s20idq4eMqrbQWhH2ynkXVDpKCLNG5UTpAkpZbxH9
vnG0NUpD0v5MVKiO1Z/3S4b5WDm5CJDccZr32Tjx1h6qYHWMvfaM4GrrhcfxwFin
eGJfbpFk3lIRq3yMM5yUsCZPjYvPIEakxbp4To33HCrIzzRs5jNepuBaQ4UUPxar
6LosgDg+MeeFkwHJQx5ZlfuDt0ZYWalfWn80a5OG7NMm/fP1TRBfVGv5dk7LtOAx
bj0HSwGOV3QWEX2nn/StBxuOaRlTxu8JZ8BhjdJGu//C22TZ1qOf9Y010XQSDw64
Jue8JwVEeRL8HeePHQUu++ARDYon5slvAnFeD1IgGdQ9gjL2NvlAkq+u7NfRfed2
qh2ENtvtY6eeUYkfiybg60sYefl+jrJGy8lKbc3JfSh1B2bEWdlHqvw2VeSJP4JX
zEDg62w0wapv3VQB/X6xJHuYNJ9r7c9py/phY4qEHxfIGAf8/4fs0ErsOX1byfYQ
56GGnnooi5anp1gWgSo=
-----END CERTIFICATE-----


bosh env
  Using environment 'https://10.128.184.0:25555' as user 'admin'
  
  Name               snw-itsouvalas-lab-bosh  
  UUID               ed1f6d44-2c23-4c9a-9a1d-8685640aec0f  
  Version            271.2.0 (00000000)  
  Director Stemcell  ubuntu-xenial/621.125  
  CPI                vsphere_cpi  
  Features           compiled_package_cache: disabled  
                     config_server: enabled  
                     local_dns: enabled  
                     power_dns: disabled  
                     snapshots: disabled  
  User               admin  
  
  Succeeded


blacksmith (internal) bosh director
  bosh url: https://10.128.184.0:25555
  username: admin
  password: sOm3PasSw0rd


blacksmith web management UI
  web url:   https://10.128.184.128:443
  username:  blacksmith
  password:  sOm3PasSw0rd
  clickable: https://blacksmith:sOm3PasSw0rd@10.128.184.128:443


blacksmith catalog
  !!! install the 'boss' cli to query the blacksmith catalog
      (https://github.com/jhunt/boss)

================================================================================
```

To get the _web url_ using the FQDN you may use `cf service-brokers` instead:

```
cf service-brokers
```

```
Getting service brokers as admin...
name                            url
snw-itsouvalas-lab-blacksmith   https://snw-itsouvalas-lab-blacksmith.cf-domain.xyz:443
...
```

## Get service instances information

Using the information provided above login to the _web url_. Once logged in you will be presented with a set of Plans, Service Instances and Log information:

![Blacksmith_UI](diag/blacksmith_ui.png)

Under _Service Instances_ click on `manifest.yml` and you will be shown the manifest currently in use by the corresponding service instance. Note down the following information

* mgmt_host
* mgmt_port
* user
* pass
* name

The same information may also be found on `creds.yml` under **management_tls**:

* host
* password
* port
* username

## Login to rabbitmq management interface

Using the information provided above, visit https://mgmt_host:mgmt_port and use the corresponding credentials. You can now visually check all the information related to the rabbitmq service instance deployed, queues, messages etc:

![Rabbitmq_UI](diag/rmq_ui.png)


## Using bosh to communicate with the deployed service instance directly

Depending on the type of the blacksmith deployment, you should be able to utilize bosh to interact with the service instances directly. In our case, given we are using the `- external-bosh` feature we can query our bosh director for its information using the `name` (noted above) as the deployment name:

```
bosh -d rabbitmq-standalone-b81e67c1-ba88-468e-919a-d780c2e78ab2 vms
```

```
Using environment 'https://10.128.184.0:25555' as user 'admin'

Task 210203. Done

Deployment 'rabbitmq-standalone-b81e67c1-ba88-468e-919a-d780c2e78ab2'

Instance                                         Process State  AZ  IPs           VM CID                                   VM Type  Active  Stemcell  
standalone/b93bfeef-2555-41f4-bb58-279bf9b03c1e  running        z1  10.128.185.3  vm-cd478ef0-5774-4bbf-925a-6bab6e8c943b  default  true    bosh-vsphere-esxi-ubuntu-bionic-go_agent/1.54  

1 vms

Succeeded
```

We may then connect to the instance using bosh ssh

```
bosh -d rabbitmq-standalone-b81e67c1-ba88-468e-919a-d780c2e78ab2 ssh standalone/b93bfeef-2555-41f4-bb58-279bf9b03c1e
```

```
Using environment 'https://10.128.184.0:25555' as user 'admin'

Using deployment 'rabbitmq-standalone-b81e67c1-ba88-468e-919a-d780c2e78ab2'

Task 210204. Done
Unauthorized use is strictly prohibited. All access and activity
is subject to logging and monitoring.
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 5.4.0-92-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

Last login: Mon Aug 29 10:28:41 2022 from 10.128.3.0
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

standalone/b93bfeef-2555-41f4-bb58-279bf9b03c1e:~$
```

## Backing up and restoring a rabbitmq instance

This is discussed further on [Backup and Restore](https://www.rabbitmq.com/backup.html) in a nutshell:

Two Types of Node Data:

* Definitions (Topology)
* Messages

If we **only require the definitions** you can backup those using 

`rabbitmqadmin export /path/to/definitions.file.json`

and restore them using

`rabbitmqadmin import /path/to/definitions.file.json`


### Hint

rabbitmqadmin is part of the rabbitmq on brew:

`brew install rabbitmq`


`export PATH=$PATH:/usr/local/sbin`

you may then use `~/.rabbitmqadmin.conf` with the following example contents

```
  [host_normal]
  hostname = 10.128.185.3
  # use 15671 for HTTPS
  port = 15672
  username = somelongstringF0rUsernAme
  password = s0mel0ngStRinGf0rPasSword
```

to import/export like so:

`rabbitmqadmin -c ~/.rabbitmqadmin.conf -N host_normal export definitions.file.json`

`rabbitmqadmin -c ~/.rabbitmqadmin.conf -N host_normal import definitions.file.json`

If we **require the messages** as well you may then use the ssh connection shown earlier to backup the directory contents of `msg_stores/vhosts` which, in our example balcksmith deployed service, can be found under 

`/var/vcap/store/rabbitmq/rabbit@b93bfeef-2555-41f4-bb58-279bf9b03c1e.standalone.rabbitmq-service.rabbitmq-standalone-b81e67c1-ba88-468e-919a-d780c2e78ab2.bosh/msg_stores/vhosts`

and restore that to the newly created instance.