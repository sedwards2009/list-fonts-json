#!/bin/bash

rm -rf build || true
docker build -t list-fonts-json-env .
docker run -i -t -u `id -u $USER` --rm -v $(pwd):/source:rw list-fonts-json-env
