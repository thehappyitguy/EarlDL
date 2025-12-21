# EarlDL
One-command, cross-platform wrapper around yt-dlp that always downloads

**EarlDL** is a simple, opinionated command-line tool that downloads:

- 🎥 Best available video (up to 4K if available)
- 🎵 Best available audio as MP3
- 📝 Video descriptions and subtitles
- 📁 Clean, human-readable folder structure

Built on top of `yt-dlp`, wrapped so you never have to remember flags again.

---

## Prerequisites

Before installing EarlDL, ensure the following are installed:

- **Homebrew** (macOS package manager)  
  Install if you don’t have it:
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  ## yt-dlp
  brew install yt-dlp

  ## ffmpeg
  brew install ffmpeg
  
## Features
	•	One command, one paste
	•	Always produces two files:
	•	Video file
	•	MP3 file
	•	Automatic folder naming:
	•	Channel name
	•	Upload date
	•	Video title
	•	Playlist support
	•	Resume support
	•	Metadata + thumbnails embedded
	•	macOS folder picker
	  
## Installation of EarlDL

curl -L https://raw.githubusercontent.com/thehappyitguy/earldl/main/install.sh | bash
