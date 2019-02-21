#!/bin/sh

# set tracing env var to true for more verbosity - set by martin caarels oct 5 2017
export CF_TRACE=true
export CF_TRACE=./trace.log

cf login -a $api -u $username -p $password -o $organization -s $space &&\
cd ./resource-git-smoketests-sso-resource/ &&\
cf push -f $manifest
