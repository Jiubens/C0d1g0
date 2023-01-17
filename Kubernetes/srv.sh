#!/bin/bash
cliente=$1
id_pod=$(/usr/local/bin/kubectl -n $cliente get pod |tail -n+2 |awk '{print $1}'| fzf --height 60%)
echo  "$id_pod"
/usr/local/bin/kubectl exec -n $cliente -it "$id_pod" /bin/bash || /usr/local/bin/kubectl exec -n $cliente -it "$id_pod" /bin/sh
