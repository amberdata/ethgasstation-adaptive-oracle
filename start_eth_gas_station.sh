#!/usr/bin/env bash

[ -z "${DATABASE_HOSTNAME}" ] && declare DATABASE_HOSTNAME="localhost"
[ -z "${DATABASE_PORT}"     ] && declare DATABASE_PORT=5432
[ -z "${DATABASE_NAME}"     ] && declare DATABASE_NAME="ethereum"
[ -z "${DATABASE_USERNAME}" ] && declare DATABASE_USERNAME="admin"
[ -z "${DATABASE_PASSWORD}" ] && declare DATABASE_PASSWORD='admin'

[ -z "${WEB3_HOST}"         ] && declare WEB3_HOST=127.0.0.1
[ -z "${WEB3_PORT}"         ] && declare WEB3_PORT=8545

DATABASE_HOSTNAME="${DATABASE_HOSTNAME}" \
DATABASE_PORT="${DATABASE_PORT}"         \
DATABASE_NAME="${DATABASE_NAME}"         \
DATABASE_USERNAME="${DATABASE_USERNAME}" \
DATABASE_PASSWORD="${DATABASE_PASSWORD}" \
WEB3_HOST="${WEB3_HOST}"                 \
WEB3_PORT="${WEB3_PORT}"                 \
  nohup python3 ethgasstation.py > ethgasstation.log 2>&1 &

