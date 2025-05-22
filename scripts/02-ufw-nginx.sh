#!/bin/sh

ufw allow ssh
ufw allow 'Nginx Full'

ufw --force enable
