#!/bin/bash
cliente=$1
#id_pod=$(/usr/local/bin/kubectl -n $cliente get pod |tail -n+2 |awk '{print $1}'| fzf --height 60%)
#echo  "$id_pod"

selector=$(/usr/local/bin/kubectl describe pod -n $cliente  | grep "Labels:" -A 1 | grep "app=" |  uniq | awk -F '=' '{print $2}' | fzf --height 60%)

/usr/local/bin/kubectl -n $cliente logs --max-log-requests 20 -f --selector=app=$selector | /usr/bin/grep -v -E "(GET|POST|HEAD)"
