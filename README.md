# CNI Installer
This is a container image and a k8s daemonset to install [containernetworking cni plugins](https://github.com/containernetworking/plugins) on all k8s nodes.

## usage

`kubectl apply -f https://raw.githubusercontent.com/hujun-open/installcni/refs/heads/main/daemonset.yaml`

This command creates a daemon set that download the latest release of plugins and install them on host's `/opt/cni/bin` folder.
