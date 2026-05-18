find . -type f -name "*.example" | while read -r file; do
    newfile="${file%.example}"

    if [ -f "$newfile" ]; then
        echo "Warning: $newfile already exists, skipping"
    else
        cp "$file" "$newfile"
        echo "Copied: $file -> $newfile"
    fi
done
