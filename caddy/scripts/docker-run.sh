#!/bin/bash -e

CADDY_CONFIG="Caddyfile"

echo "Enabling caddy authorisation on new bindings"
if setcap_cmd=$(PATH+=$PATH:/sbin type -p setcap)
then
  # Needed so that caddy can open ports
  $setcap_cmd cap_net_bind_service=+ep /app/caddy
fi

/app/caddy run --config "/app/config/${CADDY_CONFIG}" --adapter caddyfile
exit 1
