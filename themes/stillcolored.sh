#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
# regular text
export COLOR_01="#1a1a1a"           # Black
export COLOR_02="#b22222"           # Red
export COLOR_03="#458b00"           # Green
export COLOR_04="#8b6508"           # Yellow
export COLOR_05="#483d8b"           # Blue
export COLOR_06="#a020f0"           # Magenta
export COLOR_07="#008b8b"           # Cyan
export COLOR_08="#78716b"           # Light gray

# bold text
export COLOR_09="#363330"           # Dark gray
export COLOR_10="#b22222"           # Light Red
export COLOR_11="#458b00"           # Light Green
export COLOR_12="#8b6508"           # Light Yellow
export COLOR_13="#483d8b"           # Light Blue
export COLOR_14="#a020f0"           # Light Magenta
export COLOR_15="#008b8b"           # Light Cyan
export COLOR_16="#f8f8f8"           # White

export BACKGROUND_COLOR="#f0fbed"   # Background Color
export FOREGROUND_COLOR=$COLOR_01   # Foreground Color (text)
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor color
export PROFILE_NAME="stillcolored"
# =============================================================== #







# =============================================================== #
# | Apply ColorS
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Mayccoll/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
