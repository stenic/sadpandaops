# SadPandaOps

A CICD tool for those with limited power.

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
