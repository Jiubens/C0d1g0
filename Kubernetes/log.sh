#!/bin/bash
cliente=$1
/usr/local/bin/kubectl -n $cliente logs --max-log-requests 15 -f --selector=app=php-$cliente | /usr/bin/grep -v -E "(GET|POST|HEAD)"
