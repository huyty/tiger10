#!/bin/sh
if [ ! -f UUID ]; then
  UUID="65eb3440-9246-4822-b5f2-c891748987fb"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

