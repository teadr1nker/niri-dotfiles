SOURCE_DIR="$(pwd)"  # Current directory (or change to specific path)
TARGET_BASE="$HOME/.config"


# Loop through all directories in current location
for dir in */; do
    dirname="${dir%/}"

    if [ "$dirname" = "scripts" ]; then
        echo "Skipping: $dirname (excluded)"
        continue
    fi

    if [ -d "$dirname" ]; then
        SOURCE_PATH="$(pwd)/$dirname"
        TARGET_PATH="$TARGET_BASE/$dirname"

        if [ -e "$TARGET_PATH" ]; then
            echo "Warning: $TARGET_PATH already exists, skipping"
        else
            ln -s "$SOURCE_PATH" "$TARGET_PATH"
            echo "Linked: $SOURCE_PATH -> $TARGET_PATH"
        fi
    fi
done
