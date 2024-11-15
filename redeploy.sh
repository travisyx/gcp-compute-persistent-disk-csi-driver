#!/bin/bash
GCE_PD_CSI_STAGING_IMAGE=us-central1-docker.pkg.dev/travisx-joonix/csi-dev/gce-pd-csi-driver
make push-container
./deploy/kubernetes/delete-driver.sh
GCE_PD_DRIVER_VERSION=dev && ./deploy/kubernetes/deploy-driver.sh
