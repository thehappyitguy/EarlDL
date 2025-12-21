#!/usr/bin/env bash
set -e

# Ensure dependencies
if ! command -v brew >/dev/null; then
  echo "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install yt-dlp ffmpeg

# Install EarlDL script
sudo curl -L https://raw.githubusercontent.com/thehappyitguy/earldl/main/earldl.sh -o /usr/local/bin/earldl
sudo chmod +x /usr/local/bin/earldl

echo "EarlDL installed! Run: earldl 'URL'"
