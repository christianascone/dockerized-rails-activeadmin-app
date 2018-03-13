#!/bin/bash

## SERVER session handler
if ! screen -ls | grep -q "jobs_worker"; then
    echo "Starting jobs worker..."
    screen -S jobs_worker -d -m bash -c "rake jobs:work"
    if [[ $? -eq 0 ]]; then
        echo "Jobs worker started."
    else
        echo "Error: jobs worker failure."
    fi
fi

## Start rails
rails s -b '0.0.0.0'