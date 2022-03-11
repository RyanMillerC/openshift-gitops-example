# GitOps

Configuration-as-Code to deploy a CI/CD environment on OpenShift.

## Step 1

Deploy Openshift GitOps and OpenShift Pipelines operators to the cluster:

```bash
$ oc create -f ./manifests/01-operators
```

## Step 2

Create a namespace (OpenShift project) to deploy application into:

```bash
$ oc create -f ./manifests/02-namespace
```

## Step 3

Create an AppProject and Application to be deployed into the namespace:

```bash
$ oc create -f ./manifests/03-gitops
```
