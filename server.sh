#!/bin/bash

# This script is used for launching server and configuration scripts from Admin/ directory.
# See Admin/help or README.md for further details.


if [ "$#" = 0 ] || [ "$1" = "start" ]; then
    bash "Admin/Start.sh"
elif [ "$1" = "config" ]; then
    bash "Admin/ConfigHomeServer.sh"
elif [ "$1" = "help" ]; then
    cat "Admin/help"
elif [ "$1" = "stop" ]; then
    bash "Admin/StopHomeServer.sh"
elif [ "$1" = "backup" ]; then
    bash Admin/BackupHomeServer.sh $2
elif [ "$1" = "ssl" ]; then
    bash Admin/ssl.sh $2
else
    echo "Unknown command. Run script with \"help\" to display help."
fi
