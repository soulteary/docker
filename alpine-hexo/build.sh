#!/bin/bash

docker build -t soulteary/alpine-hexo $(cd "$(dirname "$0")"; pwd)/
