#!/usr/bin/env bash

kubectl -n monitoring create secret generic etcd-certs --from-file=/etc/kubernetes/pki/etcd/healthcheck-client.crt --from-file=/etc/kubernetes/pki/etcd/healthcheck-client.key --from-file=/etc/kubernetes/pki/etcd/ca.crt

kubectl apply -f prometheus-etcdService.yaml
kubectl apply -f prometheus-prometheus.yaml 
kubectl apply -f prometheus-serviceMonitorEtcd.yaml

kubectl apply -f prometheus-etcdRules.yaml

