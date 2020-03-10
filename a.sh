#!/bin/bash

export GHUSER=lazybetrayer
export REPO="gitops-demo"
export NS="flux-test"
fluxctl install \
    --git-user=${GHUSER} \
    --git-email=${GHUSER}@users.noreply.github.com \
    --git-url=git@github.com:${REPO} \
    --namespace=${NS} | kubectl apply -f -
