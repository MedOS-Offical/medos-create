#!/bin/bash
# -----------------------------------------------------------------------------
# MedOS Bootstrap Script
# Version: 1 'Izmir' Beta
# Description: This script copies the contents of MedOS rootfs to a target
#              directory, similar to debootstrap.
# Warning: Currently, only version 1 'Izmir' Beta is available.
# -----------------------------------------------------------------------------

VERSION="1 'Izmir' Beta"
SOURCE_DIR="$PWD/medos-rootfs"   # Script ve rootfs aynı dizinde
TARGET_DIR="$1"

# Check if target directory is provided
if [ -z "$TARGET_DIR" ]; then
    echo "Usage: $0 /path/to/target/directory"
    exit 1
fi

# Check if source rootfs exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "ERROR: Source rootfs directory not found at $SOURCE_DIR"
    exit 2
fi

echo "WARNING: You are installing $VERSION. This is the only version currently available!"
echo "Copying root filesystem contents to target directory..."

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Copy rootfs contents (files + subfolders) only
sudo rsync -aHAX "$SOURCE_DIR"/ "$TARGET_DIR"/

echo "Bootstrap completed successfully!"
echo "Contents of MedOS rootfs are now available at $TARGET_DIR"
