#!/bin/bash

# Hash-in başındakı {xor} hissəsini təmizləyirik
input_hash=$(echo "$1" | sed 's/^{xor}//')

# Base64-dən çıxarırıq və hər simvolu ASCII 95 (_) ilə XOR edirik
echo "$input_hash" | base64 -d | perl -pe 's/./$_ ^ "_" /ge'
echo ""
