#!/bin/bash

ACTION='';

for ARGV in "$@"
    do
        case $ARGV in
            'server'|'s')
                ACTION='run-server';
            ;;
            'generate'|'g')
                ACTION='generate-release';
            ;;
        esac
done

case $ACTION in
    'run-server')
		echo "[INFO] Try to run server";
        set -- /usr/bin/hexo server -i 0.0.0.0 -p 80
    ;;
    'generate-release')
        # todo
        # set -- hexo clean && hexo generate
    ;;
    *)
        echo -ne "Usage: \n\t${0} Command --argument1 --argument2 ... --argumentN\n\n";
        exit 2;
esac

exec "$@"
