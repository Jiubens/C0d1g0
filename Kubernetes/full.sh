#!/bin/bash 
ns=$(kubectl get ns | awk 'NR>1 {print $1}' | fzf --height 60%)
id_pod=$(/usr/local/bin/kubectl -n $ns get pod |tail -n+2 |awk '{print $1}'| fzf --height 60%)
echo  "$id_pod"
/usr/local/bin/kubectl exec -n $ns  -it "$id_pod" /bin/bash || /usr/local/bin/kubectl exec -n $ns -it "$id_pod" /bin/sh
