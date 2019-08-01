#!/usr/bin/env bash

kubectl delete secret alertmanager-main -n monitoring

kubectl create secret generic alertmanager-main --from-file=alertmanager.yaml -n monitoring

