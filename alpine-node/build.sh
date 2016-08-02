#!/bin/bash

docker build -t soulteary/alpine-node $(cd "$(dirname "$0")"; pwd)/
