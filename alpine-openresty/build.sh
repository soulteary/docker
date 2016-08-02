#!/bin/bash

docker build -t soulteary/alpine-openresty $(cd "$(dirname "$0")"; pwd)/
