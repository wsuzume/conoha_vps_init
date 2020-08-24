#!/bin/bash
if [ $# -ne 1 ]; then
  echo "Error: must take only one argument"
  echo "  please specify destination:"
  echo "    ./copy_inventory.sh [destination]"
  exit 1
fi
if [ -d $1 ]; then
    echo "already exists: $1"
    echo "delete or backup before copy"
else
    mkdir -p $1
    cp -r inventory $1
fi
