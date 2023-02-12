#!/bin/sh
kubectl apply -f namespace.yaml
kubectl create secret docker-registry privatecred \
   --docker-server=valaxy02.jfrog.io \
   --docker-username=kubernetes_admin \
   --docker-password=Valaxy@123 \
   --docker-email=arsravis@gmail.com \
   -n valaxy
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
