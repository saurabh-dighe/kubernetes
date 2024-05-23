# kubernetes

# kubernetes


### What is Kubernetes ?

```
Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. 

It abstracts the underlying infrastructure, enabling seamless management of resources and workload distribution. 

Kubernetes offers tools for application scaling, self-healing, and load balancing, simplifying the development and operation of complex microservices architectures. 

It promotes efficiency, resilience, and portability across various cloud and on-premises environments.

```

### Do we run Containers directly on the top of Kubernetes Clusters ?

```
We don't run containers directly on the top of Kubernetes Clusters. Instead we use something called as POD's.
POD's are the smallest units in Kubernetes. POD is a wrapper to your container which means One Pod holds one or more than one container.
```

### Can a POD in kubernetes runs more than one container ?

```
YES! If two containers are working closely together, then we can use the multi-container pods, which was solved by K8 and that's main advantage.

All the containers in a pod will have common network stack and storage which results in high performance for apps that needs common network storage.

Containers won't be having IP irrespective of their count and it all goes by the POD IP Only.
```

### How can we create the resources in kubernetes ?

Kubernetes resources can be created in 2 ways : 

```
    1) Imerative Approach   [ Creating by running the direct commands ]

            ex:  kubectl run nginx-pod  --image=nginx

    2) Declarative Approach [ Creating by using the YAML : Suggested ]
```


### kubenetes commands 


Most used Kubernetes commands :

```
Syntax :  kubectl action resources 

* kubectl get nodes  
* kubectl get nodes -o wide
* kubectl cluster-info 
* kubectl api-versions
* kubectl api-resources 
* kubectl --help 
* kubectl describe resource resourceName
* kubectl logs -f podName                   [ when you have a single container in pod ] 
* kubectl logs -f podName -c containerName  [ when you have multiple containers in a pod ] 
```



### How can we create resources in kubernetes ?

```
We can create resources in kubernetes by using any of the following approaches.

    1) Imperative   [ Using commands       : This is not recommended approach ]
    2) Declarative  [ Recommented Apporach : Everything will be in code using YAML ]
```

### kubectl apply -f vs create -f ?

```
Both apply and create has the capabilitiy to create the resources mentioned in the mainfest.yaml

create just creates the resources if the resource is not available whilst apply even creates the resources of they are not available.
If they are available, it's going to apply the changes.

```


# What is a namespace in kubernetes ?

```
A namespace in Kubernetes is a virtual partition that isolates and organizes resources within a cluster, enabling better resource management and access control for different teams or applications. 

It helps avoid naming conflicts and enhances clarity in a shared environment.
```


### What are the namespaces that comes up as a part of the Kubernetes Cluster Installation ?

```

    1) default        [ all your resources will be created by default in this nameSpace ]
    2) kube-public    [ Master plane components and this is mostly reserved for cluster internal usage that needs to be cluster visible ]
    3) kube-system    [ THis is for the objects created by the Kubernetes System. This is internal to kubernetes]

```


### How can we create kubernetes resources using manifest files ???

```
    $ kubectl apply -f nameOfTheFile.yml       
            [ apply is going to create resource is not available or updates the values of the resources if the resource already exits]

    $ kubectl create -f nameOfTheFile.yml 
             [ create is going to create resource ]
    
    $ kubectl delete -f nameOfTheFile.yml 
             [delete is going to delete all the kubernetes resources created by this manifest]
```

### How can I ensure that a pod which is deleted should be coming up automatically ?
### How can I ensure that a specific number of pods of an instance should be running ?
### How can I upgrade from x to y version of pods without any interruption ?


# ALL THE ABOVE VAB BE FULFILLED BY USING SETS!!!!

```
In Kubernetes, we don't run / create any of resources diectly as POD's as they are not manture enough to be maintained.
Instead, we run SET's and set's will take care of all the above 3 points.
```

### Sets In Kubernetes : 

```
    1) Replicat Set 
    2) Deployment Set
    3) Daemon Set 
    4) Stateful Set

```

### Annotations : 


```
Annotations in kubernetes allows pods to have labels with special characters and with greater character limit.

They are primarily used to add some extra power or features to your resources.
```




### How to create a Kubernetes Cluster on AWS ?
We can use a Managed Service called EKS : Elastic Kubernetes Service


1) Ensure you have VPC In Place ( network )
2) Create the cluster 
3) Create Nodepools


### You can create cluster by using any of the below ways : 

```
    1) Manually   [ on aws console ]
    2) EKSCTL     [ Utility from Weaveworks ]
    3) Terraform  
```


In AWS, EKS Cluster can be of 3 types : 

```
    1) Public                ( You can access the cluster from public and traffic from Master to Work Nodes will be over  internet )
    2) Public and Private    ( You can access the cluster from the public, but traffic from master to worker will be over intranet)
    3) Private               ( You can access it only with in the network and traffic between the nodes and master are strictly with in the VPC )
```


# How do you upgrade your Kuberntes Cluster ?

```
It goes in 2 steps : 
    1) Upgrade your master to 1.25 ---> 1.26 
    2) Upgrade your worker nodes / nodePools from 1.25 yo 1.26

How this upgrade really happens in the background ?

    1) It goes by rolling update.
    2) 1.26 nodes comes up, deltes one node.
```



### How do you call a kubernetes service ?

```
By using it's name ? 

    $ If it's in a default nameSpace.

How one service can talk to other service in a different nameSpalce ?

    $ FQDN of a service is   serviceName.nameSpace.svc.cluster.local 

For example payment pod in payment wants to talk to cart pod in cart nameSpace ?

    $ In payment pod, refer cart svc as cart.cartns.svc.cluster.local

```