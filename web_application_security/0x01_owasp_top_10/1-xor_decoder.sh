#!/bin/bash

# Hash-dən {xor} hissəsini silirik
input_hash=$(echo "$1" | sed 's/^{xor}//')

# Kodlaşdırırıq: Base64 decode -> XOR 95 (_) -> Yeni sətir olmadan çap et
echo -n "$input_hash" | base64 -d | perl -pe 's/./$_ ^ "_" /ge'
