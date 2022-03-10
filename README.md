# Infrastructure-as-Code

## Requirements

- `[age](https://dl.filippo.io/age/latest?for=linux/amd64)`
- `kam`

## Set up Encryption Key

```bash
$ mkdir -p ~/.config/sops/age
$ age-keygen -o ~/.config/sops/age/key.txt
```

## Set up Secrets

```bash
$ export SOPS_AGE_RECIPIENTS='<YOUR PUBLIC KEY>'
```
