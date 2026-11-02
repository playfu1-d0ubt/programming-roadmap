#!/usr/bin/env bash
# Make new phase folder in ~/projects/practice.
# Use: ./new_phase.sh folder_name

set -e

PRACTICE=~/projects/practice

if [ -z "$1" ]; then
    echo "Use: ./new_phase.sh folder_name"
    exit 1
fi

TARGET="$PRACTICE/$1"

mkdir -p "$TARGET/sample_data"
mkdir -p "$TARGET/export"
cp -r "$PRACTICE/.vscode" "$TARGET/.vscode"
python3 -m venv "$TARGET/venv"

echo "Made $TARGET"
echo "Next: cd $TARGET && source venv/bin/activate"
