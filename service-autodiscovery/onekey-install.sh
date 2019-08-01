#!/usr/bin/env bash

kubectl create secret generic additional-configs --from-file=prometheus-additional.yaml -n monitoring

kubectl apply -f prometheus-clusterrole.yaml

kubectl apply -f prometheus-prometheus.yaml

