#!/bin/sh
if [ ! -f UUID ]; then
  UUID="238B0A0A-4C64-2320-D800-60397CE0DAA4"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

