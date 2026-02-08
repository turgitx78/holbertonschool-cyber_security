#!/bin/bash
# File: 1-xor_decoder.sh

# Arqument yoxdursa
[ -z "$1" ] && { echo "Usage: $0 {xor}<encoded>"; exit 1; }

# {xor} prefiksini çıxarırıq
encoded="${1#\{xor\}}"

# Base64-dən çıxarırıq (binary-safe)
decoded=$(echo "$encoded" | base64 -d)

# XOR açarı
key=0x55

# XOR decode (binary-safe)
echo -n "$decoded" | xxd -p -c1 | while read hex; do
    # Hex-i decimal-ə çeviririk
    dec=$((0x$hex ^ key))
    # Decimal-i char-ə çeviririk
    printf "\\x%x" "$dec"
done
echo
