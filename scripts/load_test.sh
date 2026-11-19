#!/usr/bin/env bash
# Нагрузочный тест Nginx для валидации мониторинга Zabbix.
# Запускать НА ХОСТЕ, где стоит Nginx: ./load_test.sh
# Требуется apache2-utils: apt install apache2-utils

HOST="${1:-127.0.0.1}"
PATH_STATUS="${PATH_STATUS:-basic_status}"

echo "==> Нагрузка: 10 параллельных соединений, 120 секунд, http://${HOST}/${PATH_STATUS}"
ab -t 120 -c 10 "http://${HOST}/${PATH_STATUS}"
