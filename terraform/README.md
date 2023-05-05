# Steps to run

There are various ways to supply values to the Terraform variables used in the `main.tf` file. I will be supplying the values on the command line. Official documentation [here](https://developer.hashicorp.com/terraform/language/values/variables#variables-on-the-command-line)

```
terraform apply -var access_token=foo -var region=foo -var size=foo -var ssh_key_fingerprint=bar
```

The command line to create a Rocky Linux from Digital Ocean Create Droplet page:

```
curl -X POST -H 'Content-Type: application/json' \
    -H 'Authorization: Bearer '$TOKEN'' \
    -d '{"name":"rockylinux-s-1vcpu-512mb-10gb-syd1-01",
        "size":"s-1vcpu-512mb-10gb",
        "region":"syd1",
        "image":"rockylinux-9-x64",
        "monitoring":true,
        "vpc_uuid":"d71f64fa-56fb-475e-b97f-863959921473",
        "tags":["jenkins"]}' \
    "https://api.digitalocean.com/v2/droplets"
```