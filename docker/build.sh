#!/bin/bash

set -e

tar --exclude='../docker' --exclude="../.git" -cvzf src.tgz ../
docker build -t kcmastrpc/nashgo .
rm -rf src.tgz