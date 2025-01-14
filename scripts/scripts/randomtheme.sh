#!/bin/bash

# Directory containing the images
IMAGE_DIR="$HOME/Wallpapers"
# Destination for the symlink
LINK_DEST="$HOME/.config/wallpaper"
# Desired width for smaller image
SMALL_WIDTH=800
# Monitor to use
monitor=$(hyprctl monitors | grep Monitor | awk '{print $2}')

# Create the destination directory if it doesn't exist
mkdir -p "$LINK_DEST"

# Read the current wallpaper name
CURRENT_WALLPAPER_NAME=$(cat "$LINK_DEST/current_wallpaper_name" 2>/dev/null)

# Select a random image that is different from the current wallpaper
while true; do
    RANDOM_IMAGE=$(find -L "$IMAGE_DIR" -type f | shuf -n 1)
    
    # Check if a random image was found and it's different from the current one
    if [ -n "$RANDOM_IMAGE" ] && [ "$RANDOM_IMAGE" != "$CURRENT_WALLPAPER_NAME" ]; then
        break
    fi
done

# Remove any existing symlink
rm -f "$LINK_DEST/current_wallpaper"
rm -f "$LINK_DEST/current_wallpaper_small"

# Create a new symlink to the random image
ln -s "$RANDOM_IMAGE" "$LINK_DEST/current_wallpaper"

# Write the name of the image to a file
echo "$RANDOM_IMAGE" > "$LINK_DEST/current_wallpaper_name"

# Create a smaller version of the image
magick "$RANDOM_IMAGE" -resize "${SMALL_WIDTH}x" "$LINK_DEST/current_wallpaper_small"
echo "New wallpaper set: $RANDOM_IMAGE"
echo "Small wallpaper set: $LINK_DEST/current_wallpaper_small"

# Set the wallpaper
hyprctl hyprpaper unload all > /dev/null
hyprctl hyprpaper preload "$RANDOM_IMAGE" > /dev/null
hyprctl hyprpaper wallpaper "$monitor, $RANDOM_IMAGE" > /dev/null

# Pywal
wal -i "$RANDOM_IMAGE" -o "$HOME/scripts/reload.sh" --cols16 lighten --contrast 2.5
