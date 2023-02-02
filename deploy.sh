#!/usr/bin/sh
docker-compose --env-file ./adminPw.env up -d --build --force-recreate
