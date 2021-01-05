# variables
KOMPOSE=v1.21.0     # https://github.com/kubernetes/kompose/blob/master/docs/installation.md#github-release
HELM=v3.3.1         # https://github.com/helm/helm/releases
HELMFILE=v0.129.3   # https://github.com/roboll/helmfile/releases

# kubectl
if [ -z $(which kubectl) ]
  then
    curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
    chmod +x ./kubectl
    sudo mv ./kubectl /usr/local/bin/kubectl
    echo "kubectl installed successfuly!"
  else
    echo "kubectl already installed"
  fi

  # minikube
  # minikube start --driver=kvm2
  if [ -z $(which minikube) ]
    then
      curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
      && chmod +x minikube
      sudo install minikube /usr/local/bin/
      echo "minikube installed successfuly!"
    else
      echo "minikube already installed"
    fi
# kvm
if [ -z $(which kvm) ]
  then
    sudo apt-get install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
    sudo adduser $USER kvm
    sudo chown $USER /dev/kvm
    echo "kvm installed successfuly!"
  else
    echo "kvm already installed"
  fi
# doctl
if [ -z $(which doctl) ]
  then
    sudo snap install doctl
    echo "doctl installed successfuly!"
  else
    echo "doctl already installed"
  fi
# kompose
if [ -z $(which kompose) ]
  then
    curl -L "https://github.com/kubernetes/kompose/releases/download/${KOMPOSE}/kompose-linux-amd64" -o kompose
    chmod +x kompose
    sudo mv ./kompose /usr/local/bin/kompose
    echo "kompose installed successfuly!"
  else
    echo "kompose already installed"
  fi
# helm
if [ -z $(which helm) ]
  then
    wget "https://get.helm.sh/helm-${HELM}-linux-amd64.tar.gz"
    tar -xvzf "helm-${HELM}-linux-amd64.tar.gz"
    chmod +x linux-amd64/helm
    sudo cp linux-amd64/helm /usr/local/bin/helm
    rm -rf "helm-${HELM}-linux-amd64.tar.gz" linux-amd64
    echo "helm installed successfuly!"
  else
    echo "helm already installed"
  fi
# helmfile
if [ -z $(which helmfile) ]
  then
    wget "https://github.com/roboll/helmfile/releases/download/${HELMFILE}/helmfile_linux_amd64"
    chmod +x helmfile_linux_amd64
    sudo mv ./helmfile_linux_amd64 /usr/local/bin/helmfile
    echo "helmfile installed successfuly!"
  else
    echo "helmfile already installed"
  fi

# skaffold
if [ -z $(which skaffold) ]
  then
    curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64
    sudo install skaffold /usr/local/bin/
    rm skaffold
    echo "skaffold installed successfuly!"
  else
    echo "skaffold already installed"
  fi

# skaffold
if [ -z $(which terraform) ]
  then
    curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
    sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
    sudo apt install terraform
    echo "terraform installed successfuly!"
  else
    echo "terraform already installed"
  fi


  #CHECK
  echo 'CHECK INSTALATIONS:'
  which kubectl
  which minikube
  which kvm
  which doctl
  which kompose
  which helm
  which helmfile
  which skaffold
  which terraform
