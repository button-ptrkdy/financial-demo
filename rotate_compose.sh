#!/bin/bash

function rotate()         
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE && mv "$2" "$1" && mv $TMPFILE "$2"
}

echo '### swapping credentials.yml with compose_credentials.yml ###'

rotate 'credentials.yml' 'compose_credentials.yml'

echo '### swapping endpoints.yml with compose_endpoints.yml ###'

rotate 'endpoints.yml' 'compose_endpoints.yml'

