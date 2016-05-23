#!/bin/zsh

# configuration
DEFAULT_NAME="Raul Rodriguez"
DEFAULT_EMAIL="raulrodriguez782@gmail.com"
DEFAULT_WEBSITE="http://www.dev4media.pe"

read -p "Name ($DEFAULT_NAME): " NAME
NAME=${NAME:-$DEFAULT_NAME}
echo $NAME

read -p "Mail ($DEFAULT_EMAIL): " EMAIL
EMAIL=${EMAIL:-$DEFAULT_EMAIL}
echo $EMAIL

read -p "Site ($DEFAULT_WEBSITE): " SITE
SITE=${SITE:-$DEFAULT_WEBSITE}
echo $SITE

# ssh
ln -sfn $PWD/ssh/config ~/.ssh/config
