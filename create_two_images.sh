#!/bin/sh
docker build -t file-builder --target file-builder . \
  && docker build -t boston --target dist-1 .
