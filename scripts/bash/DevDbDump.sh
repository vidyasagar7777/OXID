#!/bin/bash
# Initialize database with sample data
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo $SCRIPTDIR
docker exec oxidcloud-mysql sh -c 'exec mysqldump --hex-blob --databases oxid -uroot -poxid' > $SCRIPTDIR/../../db/dev_data.sql
