#!/bin/bash
kubectl delete pod nginx
kubectl delete sc test-sc
kubectl delete pvc test-pvc
kubectl delete vac gold silver
