#!/bin/bash
cliente=$1
/usr/local/bin/kubectl -n $cliente get all -o wide
