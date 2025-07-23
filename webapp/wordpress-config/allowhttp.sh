#!/bin/bash
docker exec wordpress /bin/bash -c "wp option update siteurl http://localhost:8080"
docker exec wordpress /bin/bash -c "wp option update home http://localhost:8080"