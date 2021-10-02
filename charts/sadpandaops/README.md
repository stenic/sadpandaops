# SadPandaOps

## Source Code

* <https://github.com/stenic/sadpandaops>

## Requirements

Kubernetes: `>=1.16.0-0`

## TL;DR

```console
helm repo add stenic-spo https://stenic.github.io/sadpandaops/
helm repo update
helm install sadpandaops stenic-spo/sadpandaops -f values.yaml
```

## Installing the Chart

To install the chart with the release name `sadpandaops`

```console
helm install sadpandaops stenic-spo/sadpandaops
```

## Uninstalling the Chart

To uninstall the `sadpandaops` deployment

```console
helm uninstall sadpandaops
```

The command removes all the Kubernetes components associated with the chart and deletes the release. It will however leave the resources create by the embeded helm release behind.

## Configuration

Read through the [values.yaml](./values.yaml) file. It has several commented out suggested values.

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

```console
helm install sadpandaops stenic-spo/sadpandaops -f values.yaml
```

## Parameters

### Image

| Name               | Description                                                    | Value                    |
| ------------------ | -------------------------------------------------------------- | ------------------------ |
| `image.repository` | Docker image                                                   | `nousefreak/sadpandaops` |
| `image.pullPolicy` | How to handle pulling images                                   | `IfNotPresent`           |
| `image.tag`        | Overrides the image tag whose default is the chart appVersion. | `""`                     |


### SadPandaOps

| Name                            | Description                                                | Value              |
| ------------------------------- | ---------------------------------------------------------- | ------------------ |
| `sadpandaops.releaseName`       | Name of the resulting helm installation                    | `sadpanda-example` |
| `sadpandaops.repository.url`    | Url pointing to the git repository                         | `""`               |
| `sadpandaops.repository.path`   | Path within the repository where the helm chart is located | `""`               |
| `sadpandaops.repository.sshKey` | Private ssh key to clone the repository                    | `""`               |
| `sadpandaops.loopDelay`         | Time in seconds between control loops                      | `180`              |
| `sadpandaops.clusterRole`       | ClusterRole to assign to SadPandaOps                       | `""`               |
| `sadpandaops.role`              | Role to assign to SadPandaOps                              | `""`               |


### Common

| Name                         | Description                                   | Value  |
| ---------------------------- | --------------------------------------------- | ------ |
| `imagePullSecrets`           | Docker registry secret names as an array      | `[]`   |
| `nameOverride`               | Overwrite the name of the helm release        | `""`   |
| `fullnameOverride`           | Overwrite the name of the release             | `""`   |
| `serviceAccount.create`      | Boolean indicating to create a ServiceAccount | `true` |
| `serviceAccount.annotations` | Annotations to add to the service account     | `{}`   |
| `serviceAccount.name`        | The name of the service account to use.       | `""`   |
| `podAnnotations`             | Extra annotations for the SadPandaOps pod     | `{}`   |
| `podSecurityContext`         | Object setting podSecurityContext             | `{}`   |
| `securityContext`            | Object setting securityContext                | `{}`   |
| `nodeSelector`               | Node labels for pod assignment                | `{}`   |
| `tolerations`                | Tolerations for pod assignment                | `[]`   |
| `affinity`                   | Affinity for pod assignment                   | `{}`   |


