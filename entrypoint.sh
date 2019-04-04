#!/bin/sh
set -eu

mkdir ~/.fly
echo "access_token: $FLY_ACCESS_TOKEN" > ~/.fly/credentials.yml

fly deploy
