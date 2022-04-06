# GitOps

Configuration-as-Code to continuously deploy (CD) an application to OpenShift.

## Step 1

Deploy the Openshift GitOps operator to the cluster:

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
