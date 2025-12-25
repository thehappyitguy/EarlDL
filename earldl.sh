#!/usr/bin/env bash
set -e

if ! command -v yt-dlp >/dev/null || ! command -v ffmpeg >/dev/null; then
  echo "Missing dependencies."
  echo "Install with: brew install yt-dlp ffmpeg"
  exit 1
fi

MODE="both"

case "$1" in
  --audio-only)
    MODE="audio"
    shift
    ;;
  --video-only)
    MODE="video"
    shift
    ;;
esac

URL="$1"

if [ -z "$URL" ]; then
  echo "Usage:"
  echo "  earldl 'URL'"
  echo "  earldl --audio-only 'URL'"
  echo "  earldl --video-only 'URL'"
  exit 1
fi

BASE_DIR=$(osascript -e 'POSIX path of (choose folder with prompt "Choose download location for EarlDL:")')

COMMON_OPTS=(
  --cookies-from-browser safari
  -c --yes-playlist --ignore-errors --no-abort-on-error
  --write-description
  --write-auto-subs --write-subs
  --sub-format srt
  --convert-subs srt
  -o "${BASE_DIR}%(channel)s/%(playlist_title,playlist_index|)s%(upload_date>%Y-%m-%d)s - %(title)s/%(upload_date>%Y-%m-%d)s - %(title)s.%(ext)s"
)

if [ "$MODE" = "video" ] || [ "$MODE" = "both" ]; then
  yt-dlp "${COMMON_OPTS[@]}" \
    -f "bestvideo[height<=2160]+bestaudio/best" \
    --merge-output-format mp4 \
    --sleep-interval 10 \
    "$URL"
fi

if [ "$MODE" = "audio" ] || [ "$MODE" = "both" ]; then
  yt-dlp "${COMMON_OPTS[@]}" \
    -x --audio-format mp3 --audio-quality 0 \
    --embed-thumbnail --add-metadata \
    --sleep-interval 10 \
    "$URL"
fi
