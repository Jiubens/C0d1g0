#!/bin/bash

cliente=$1
/usr/local/bin/kubectl exec -n $cliente -it cron-$cliente-0  /bin/bash
