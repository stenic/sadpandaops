# SadPandaOps



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


