#!/bin/bash


SCRIPT_FILE=`basename "$0"`
SCRIPT_USAGE="Usage:\n\n build - $SCRIPT_FILE build <targetDir> <version> \n test  - $SCRIPT_FILE build <targetDir> <version>"
SCRIPT_METHOD=$1
SCRIPT_TARGET_DIR=$2

if [ -z $SCRIPT_METHOD ]; then
    echo -e $SCRIPT_USAGE
    exit 1;
fi;

if [ ! -d $SCRIPT_TARGET_DIR ]; then
    echo -e $SCRIPT_USAGE;
    exit 2;
fi;

IMAGE_NAME="soulteary/$SCRIPT_TARGET_DIR";
SCRIPT_TARGET_VERSION=$3


for METHOD in "$SCRIPT_METHOD"
    do
        case $METHOD in
            'build'|'b')

                if [ -z $SCRIPT_TARGET_VERSION ]; then
                    echo "Build $IMAGE_NAME:latest";
                    docker build --tag $IMAGE_NAME $SCRIPT_TARGET_DIR/
                else
                    echo "Build $IMAGE_NAME:$SCRIPT_TARGET_VERSION";
                    docker build --tag $IMAGE_NAME:$SCRIPT_TARGET_VERSION $SCRIPT_TARGET_DIR/
                fi;
            ;;
            'test'|'t')

                if [ -z $TARGET_VERSION ]; then
                    echo "Test $IMAGE_NAME:latest";
                    docker run --tty --interactive --rm $IMAGE_NAME
                else
                    echo "Test $IMAGE_NAME:$SCRIPT_TARGET_VERSION";
                    docker run --tty --interactive --rm $IMAGE_NAME:$SCRIPT_TARGET_VERSION
                fi;

            ;;
            *)
                echo "Do not support that method."
                exit 2;
            ;;
        esac
done

exit 0;