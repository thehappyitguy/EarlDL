# EarlDL
One-command, cross-platform wrapper around yt-dlp that always downloads

**EarlDL** is a simple, opinionated command-line tool that downloads:

- 🎥 Best available video (up to 4K if available)
- 🎵 Best available audio as MP3
- 📝 Video descriptions and subtitles
- 📁 Clean, human-readable folder structure

Built on top of `yt-dlp`, wrapped so you never have to remember flags again.

---

## Features

- One command, one paste
- Always produces **two files**:
  - Video file
  - MP3 file
- Automatic folder naming:
  - Channel name
  - Upload date
  - Video title
- Playlist support
- Resume support
- Metadata + thumbnails embedded
- macOS folder picker

---

## Folder Structure

Single video:
Downloads/
Channel Name/
2025-01-21 - Video Title/
2025-01-21 - Video Title.mp4
2025-01-21 - Video Title.mp3
description.txt
subtitles.en.srt

Playlists:
Downloads/
Channel Name/
Playlist Title/
2025-01-21 - Video One/
2025-01-22 - Video Two/

---

## Requirements

### Required
- `yt-dlp`
- `ffmpeg`

### Optional
- Nothing else

HandBrake is **not required**.

---

## Installation (macOS)

### 1. Install dependencies
```bash
brew install yt-dlp ffmpeg



curl -L https://raw.githubusercontent.com/thehappyitguy/earldl/main/install.sh | bash
