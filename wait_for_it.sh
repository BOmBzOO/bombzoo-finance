#!/bin/bash
# wait-for-it.sh

set -e

host="$1"
port="$2"
shift 2
cmd="$@"

# echo "Waiting for {$host} {$port} {$cmd}"

until nc -z -v -w30 "$host" "$port"; do
  echo "Waiting for $host   $port   $cmd"
  sleep 1
done

# echo "$host:$port is available, executing command $cmd"
exec $cmd