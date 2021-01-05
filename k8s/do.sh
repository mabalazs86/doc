# In digital ocean, go to API -> generate new Personal Access Token

# Login to DO
doctl auth init   # use the token to login
doctl auth list   # You can check the auth

# Create a project in DO
doctl projects create --name MyProject
doctl projects list

# Check the params
doctl kubernetes options regions
doctl kubernetes options versions
doctl kubernetes options sizes


# Create Cluster
doctl kubernetes cluster create myCluster \
--version 1.17.5-do.0 \
--count 1 \
--size s-1vcpu-2gb \
--region sgp1


# Get kubeconfig
doctl kubernetes cluster kubeconfig save myCluster
