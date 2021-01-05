# Switch between clusters
kubectl config current-context    # Get current context
kubectl config get-contexts       # List context
kubectl config use-context NAME   # Select context

# GET
kubectl get pods
kubectl get deployments
kubectl get services
kubectl get configmaps
kubectl get secrets
kubectl get ingress
kubectl get pods -w     # watch mode

# Namespaces
kubectl get namespaces
kubectl ceate namespace test
kubectl get pods -n test

# describe
kubectl describe node NODENAME
kubectl describe deployment DEPLOYMENTNAME
kubectl describe pod PODNAME

# logs
kubectl logs PODNAME

# check service url in minikube
minikube service SERVICENAME --url
