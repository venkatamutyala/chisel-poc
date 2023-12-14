# #!/bin/bash
set -e
k3d cluster create --config k3d-config.yaml
kubectl apply -k https://github.com/FyraLabs/chisel-operator?ref=staging
kubectl apply -f chisel.yaml
kubectl apply -f example.yaml