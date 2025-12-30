#!/bin/bash
# this script download latest version of CNI plugin to the specified folder

LATEST=`curl -s https://api.github.com/repos/containernetworking/plugins/releases/latest | jq -r .tag_name`
echo latest version is $LATEST
curl -L https://github.com/containernetworking/plugins/releases/download/$LATEST/cni-plugins-linux-amd64-$LATEST.tgz -o /tmp/latest.tgz
tar -xvf /tmp/latest.tgz -C $1