#!/bin/sh
kubectl apply -f namespace.yaml
kubectl create secret generic regcred --from-file=.dockerconfigjson=/root/.docker/config.json --type=kubernetes.io/dockerconfigjson -n valaxy
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml