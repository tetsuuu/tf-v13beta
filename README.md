# tf-v13beta
Upgrade PoC to terraform v0.13.0beta-2

# Try it
- Automatic installation of third-party providers
- depends_on for modules
- count and for_each for modules

# sops usage

```shell script
# add KMS key arn to env
$ export SOPS_KMS_ARN="arn:aws:kms:us-east-1:0123456789012:key/beddd63b-4b91-49f4-a865-3d668359cb28"

# create new encrypted files
$ sops credential.yml

# decryption encrypted files
$ sops -d credential.yml
```