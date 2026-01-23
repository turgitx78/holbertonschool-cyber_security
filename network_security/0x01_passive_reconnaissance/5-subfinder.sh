#!/bin/bash
subfinder -d "$1" -silent | tee /dev/stderr | xargs -I {} host {} | awk "/has address/ {print \$1\",\"\$4}" > "$1.txt"
