#!/bin/bash
/usr/local/bin/kubectl get events --sort-by='.metadata.creationTimestamp' -A
