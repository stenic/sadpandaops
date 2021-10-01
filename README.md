# SadPandaOps

A CICD tool for those with limited power.

## How does it work

You deploy sadpandaops into your namespace.
A pod will be started that will periodically fetch your git repository and check for changes.
If a change is detected, a helm apply will be performed.

## Example

```yaml
# Source of my-values.yaml
sadpandaops:
  releaseName: "example"
  clusterRole: admin
  repository:
    url: "git@github.com:NoUseFreak/somerepo.git"
    path: "path/to/helm/chart"
    sshKey: |
      -----BEGIN OPENSSH PRIVATE KEY-----
      aaabbb...
```

```bash
helm upgrade --install spo charts/sadpandaops --values ./my-values.yaml
```
