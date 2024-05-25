    1) PODS             
    2) ENV 
    3) CMD 
    4) ConfigMap 
    5) Secret 
    
    6) SETS  
        a) ReplicaSets        
        b) Deployments
        c) DaemonSets
        d) StatefulSets

    7) Health Checks
        a) Readiness Probe 
        b) Liveliness Probe 
        c) Startup Probe     
    8) Resource Utilization   ( CPU, Memory, Page )
        a) Requests
        b) Limits

    9) NameSpace 
    
   10) Services
        a) ClusterIP        ( Limits the visibility of the service only with in the cluster )
        b) LoadBalancer     ( Gives the visbility to public, outside of the cluster )
        c) NodePort         ( Opens the port directly on the NODE )
        d) External         ( It's just like a CNAME to a long name to service in the K8 Cluster )

    11) Pod Priority & Pre-emption  


### How can we create the resources in kubernetes ?

    1) Imperative Way   ( By directly running the commands )
    2) Declarative Way  ( By using YAML : So that all the changes can be captured : Production Grade )


### Pod :
    1) Smallest resource that you can create on Kubernetes.
    2) A pod is a wrapper to a container 
    3) A pod can have/run multiple containers 