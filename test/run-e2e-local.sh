#!/bin/bash

set -o nounset
set -o errexit
set -x

echo Using GOPATH $GOPATH

readonly PKGDIR=sigs.k8s.io/gcp-compute-persistent-disk-csi-driver

# This requires application default credentials to be set up, eg by
# `gcloud auth application-default login`

CLOUDTOP_HOST=
if hostname | grep -q c.googlers.com ; then
  CLOUDTOP_HOST=--cloudtop-host
fi

GIT_TAG=
if $(command -v git > /dev/null); then
  # Get the most recent tag version relative to the current state
  GIT_TAG=$(git describe --abbrev=0 --tags)
fi

ginkgo --v "test/e2e/tests" -- --project "${PROJECT}" --service-account "${IAM_NAME}" "${CLOUDTOP_HOST}" --git-tag "${GIT_TAG}" --v=6 --logtostderr $@
