# Steps to run

There are various ways to supply values to the Terraform variables used in the `main.tf` file. I will be supplying the values on the command line. Official documentation [here](https://developer.hashicorp.com/terraform/language/values/variables#variables-on-the-command-line)

```
terraform apply -var access_token=foo -var region=foo -var size=foo -var ssh_key_fingerprint=bar
```