#!/bin/bash
# Usage: bash ~/fresh-clone.sh repo-name
# Clones a repo into /tmp, sets up a venv and installs requirements.

REPO="$1"
if [ -z "$REPO" ]; then
  echo "Usage: bash ~/fresh-clone.sh repo-name"
  exit 1
fi

rm -rf /tmp/"$REPO"
git clone git@github.com:playfu1-d0ubt/"$REPO".git /tmp/"$REPO" || exit 1
cd /tmp/"$REPO" || exit 1

python3 -m venv venv
source venv/bin/activate

if [ -f requirements.txt ]; then
  pip install -r requirements.txt
else
  echo "No requirements.txt in this repo"
fi
source venv/bin/activate
echo
echo "Ready in /tmp/$REPO with the venv active."
echo "Now follow the README's run step by hand. Type 'exit' when done."
exec bash
