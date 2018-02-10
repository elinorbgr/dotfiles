#!/bin/sh

# Ensure dbus is either already running, or safely start it
if [[ -z "${DBUS_SESSION_BUS_ADDRESS}" ]];
then
    eval $(dbus-launch --sh-syntax --exit-with-session)
fi

if test -z "${XDG_RUNTIME_DIR}"; then
    export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
    if ! test -d "${XDG_RUNTIME_DIR}"; then
        mkdir "${XDG_RUNTIME_DIR}"
        chmod 0700 "${XDG_RUNTIME_DIR}"
    fi
fi

eval "$(gpg-agent --daemon)"

eval "$(ssh-agent)"

exec /etc/X11/Sessions/awesome
