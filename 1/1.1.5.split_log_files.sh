#!/bin/bash
mkdir -p d/log/l1 && \
split  -n 4 -d l1.log d/log/l1/
