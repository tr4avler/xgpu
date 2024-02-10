# Get the absolute path to the xenvast directory
XENVAST_DIR=$(pwd)

# Create a desktop shortcut
create_desktop_shortcut() {
    # Determine the desktop directory for the current user
    DESKTOP_PATH="$HOME/Desktop"

    # Make sure the Desktop directory exists
    if [ ! -d "$DESKTOP_PATH" ]; then
        echo "The desktop directory $DESKTOP_PATH does not exist."
        return 1
    fi

    local desktop_file="$DESKTOP_PATH/xenvast.desktop"
    echo "[Desktop Entry]
Version=1.0
Name=Xenvast
Comment=Run Xenvast application
Exec=python3 $XENVAST_DIR/app.py
Icon=$XENVAST_DIR/icon.png  # Replace with the path to your application's icon
Terminal=true
Type=Application
Categories=Utility;Application;" > "$desktop_file"

    # Make the desktop file executable
    chmod +x "$desktop_file"
}

# Call the function to create the desktop shortcut
create_desktop_shortcut

# Check if the shortcut was created successfully
if [ $? -eq 0 ]; then
    echo "Desktop shortcut created successfully."
else
    echo "Failed to create desktop shortcut."
    exit 1
fi
