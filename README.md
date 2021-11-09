# Sandboxes for use in dev and QA environments

## Purpose
The general idea behind this project is to have a virtual machine where we can run MySQL, MongoDB and Postgres databases and use them
in PMM testing so devs and qas have the same testing environments.

## Starting the virtual machine
1. `vagrant up`
2. `vagrant ssh`

## MongoDB
The MongoDB sandbox is based on [mlaunch](http://blog.rueckstiess.com/mtools/mlaunch.html) and it has:
- Shards
- 2 Mongos
- Config servers
- Arbiters
- Authentication
- SSL enabled.

The default user is `pmm` and password is `secret`.
In the `data/certs` directory you can find the SSL certificates.

To start the sandbox just run `./start_mongo.sh` inside the virtual machine.

Usage example: 

```
mongo <your vagrant machine ip>:27019/admin \
    --username=pmm \
    --password=secret \
    --tls \
    --tlsCertificateKeyFile data/certs/client.pem \
    --tlsCAFile data/certs/CA.crt \
    --tlsAllowInvalidHostnames \
    --tlsAllowInvalidCertificates
```
