# VDI demo

## Project setup

1. Open https://www.infomaniak.com/en/hosting/public-cloud
2. Create a project with a password
3. Open the user settings and create a password.
4. Go to OpenStack dashboard and login
5. Login (careful, the user name is behind "Gérer")
6. Download the rc configuration file
7. Show the rc configuration file and commnet
   - a bunch of environment variables for setting up environment

## Openstack CLI

1. Open the project in a console
2. source ./setup.sh
    - show the script
3. Validate that it works with a simple command
    - openstack image list
    - openstack flavor list
4. Check with infomaniak flavor list: https://www.infomaniak.com/en/hosting/public-cloud/prices


## Terraform demo

1. cd terraform
2. tf init
3. tf validate
4. tf plan
5. tf apply

## Terraform Walk-through

Browse the code:

1. main.tf
2. cloud-init.yaml

## Connect and validate

```
xssh-add heiafr_demo
```

```
ssh-vdi
```

```
grep VDI /var/log/cloud-init.log
tail /var/log/cloud-init.log
```

## NoMachine

1. Open connection and update IP
2. Connect to the server

## VsCode

1. Update ssh/config with new IP
2. Clone https://github.com/papaux/golang-web-server.git

## Destroy

```
tf destroy
```

## Cloud init

https://cloudinit.readthedocs.io/en/latest/topics/examples.html
