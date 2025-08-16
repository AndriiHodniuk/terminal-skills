#!/bin/bash

FILE_TO_BACKUP='report.txt'
BACKUP_DIRECTORY='archive'

if [ ! -d "$BACKUP_DIRECTORY" ]; then
    echo 'Creating backup directory...'
    mkdir -p archive
fi

TIMESTAMP=$(date +'%Y-%m-%d_%H-%M-%S')
DESTINATION="$BACKUP_DIRECTORY/${FILE_TO_BACKUP}.${TIMESTAMP}.bak"

mv "$FILE_TO_BACKUP" "$DESTINATION"
