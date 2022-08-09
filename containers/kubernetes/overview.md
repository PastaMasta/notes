Kubernetes Overview
================================

Container orchestration

Allows you to run different container runtimes, LXC, docker etc

Basic components
----------------

Master / Workers (minons)

Client talks to master
Master uses scheduler to choose a worker node

Pod created on worker node
Pod == group of containers deployed together on the same host

**Containers are always deployed as part of a pod**

Each master has:
kube-apiserver - main API
etcd - backing store for cluster data
kube-scheduler - watches for new pods, assignes them out to workers
kube-controller-manager - runs the controllers


Each worker has:
kubelet - used to talk back to master (ECS agent?)
kube-proxy - runs the network proxy, builds up iptables rules etc
container runtime (docker / lxc etc)
