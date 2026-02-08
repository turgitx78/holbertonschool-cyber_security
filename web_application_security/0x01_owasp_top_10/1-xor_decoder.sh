#!/bin/bash
# 1-xor_decoder.sh

s="${1#\{xor\}}"
b=$(echo "$s" | base64 -d | od -An -t u1)
for c in $b; do
  printf "\\x%x" "$((c ^ 0x55))"
done
echo

