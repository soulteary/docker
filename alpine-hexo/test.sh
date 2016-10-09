#!/bin/bash

# -v /your_source_path/document-builder/Website/source:/data/website/source \
# -v /your_source_path/document-builder/Website/_config.yml:/data/website/_config.yml \

docker run --rm -it -p 4000:80 soulteary/alpine-hexo