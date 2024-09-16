#!/bin/bash

DIR=$(pwd)
COUNT=1

for f in "$DIR"/*; do
    if [ -f "$f" ]; then
        EXT="${f##*.}"
        EXT=$(echo "$EXT" | tr '[:upper:]' '[:lower:]')

        if [ "$EXT" == "jpg" ]; then
            NEW_NAME="img${COUNT}.${EXT}"

            mv "$f" "$DIR/$NEW_NAME"
            echo "Rename: $(basename "$f") => $NEW_NAME"

            COUNT=$((COUNT + 1))
        fi
    fi
done

echo "Complete....................."
