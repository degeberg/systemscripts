#!/bin/bash

# requires a cron job to run "sudo pacman -Sy" periodically"

if [[ $(pacman -Qu | wc -l) -ne 0 ]]; then
    echo "<fc=red>[!]</fc> | "
fi
