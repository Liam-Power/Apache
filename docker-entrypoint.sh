#!/usr/bin/env bash

set -e

exec_tpl() {
    if [[ -f "/etc/gotpl/$1" ]]; then
        gotpl "/etc/gotpl/$1" > "$2"
    fi
}

process_templates() {
    exec_tpl "httpd.conf.tpl"  "${APACHE_DIR}/conf/httpd.conf"
    exec_tpl "settings.conf.tpl" "${APACHE_DIR}/conf/conf.d/settings.conf"
    exec_tpl "vhost.conf.tpl" "${APACHE_DIR}/conf/conf.d/vhost.conf"
}

process_templates