#!/bin/bash
# Initialize database with dev data
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo $SCRIPTDIR
docker exec -i oxidcloud-mysql mysql -uroot -poxid -Doxid -v <  $SCRIPTDIR/../../db/initial_dump.sql

