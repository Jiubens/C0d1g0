#!/bin/zsh
NODE=$(kubectl get nodes -o custom-columns="NOMBRE:.metadata.name" | grep -v "NOMBRE" | fzf )
kubectl get pods --all-namespaces -o wide | grep $NODE | awk '{print $1" "$2}' | xargs -n2 kubectl top pods --no-headers --namespace | sort --field-separator=' ' --key=2,2nr | column -t
#kubectl get pods --all-namespaces -o wide | grep $NODE | awk '{print $1" "$2}' | xargs -n2 kubectl top pods --no-headers --namespace | sort -t ' ' --key 2 --numeric --reverse
