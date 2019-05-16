#!/bin/bash
set -ex

# Remove current version of resources directory
rm -rf /app/fivem-server/resources

# Merge our resource directory with the user mapped resource directory
mkdir /app/fivem-server/resources
cp -rfT /app/_resources /app/fivem-server/resources
cp -rfT /app/resources /app/fivem-server/resources

# Change ownership and permissions and permission for mounted volumes/files
chown $USER:$USER -R /app/fivem-server/resources/
chmod 755 /app/fivem-server/resources/
chmod u+x /app/fivem-server/run.sh

# Execute the command passed as arguments
exec "$@"
