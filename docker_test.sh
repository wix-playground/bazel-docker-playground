#!/bin/bash
set -x

docker run --rm -d --name httpd --network=$HOST_NETWORK_NAME httpd

curl httpd
result=$?

docker kill httpd

if [[ $result -ne 0 ]]; then exit 1; fi
