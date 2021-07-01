#!/bin/bash
set -e

CONFIG_DIR=/var/lib/jupyter/
if [[ ! -f "$CONFIG_DIR/jupyter_lab_config.py" ]]; then
    mkdir -p $CONFIG_DIR
    export JUPYTER_PASSWORD_HASH=$(python3 -c "from notebook.auth import passwd; print(passwd('$JUPYTER_PASSWORD', 'sha1'))")
    echo "c.ServerApp.password = '$JUPYTER_PASSWORD_HASH'" > $CONFIG_DIR/jupyter_lab_config.py
fi

if [ "${1:0:1}" = '-' ]; then
	set -- jupyter lab "$@"
fi

exec "$@"
