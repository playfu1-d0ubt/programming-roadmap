#!/bin/bash
# Copy the MIT licence into every git repo in ~/projects, then commit and push.

SOURCE=~/projects/LICENSE.md
SKIP="playfu1-d0ubt"   # folders to skip, separated by spaces (edit this)

if [ ! -f "$SOURCE" ]; then
  echo "Can't find $SOURCE"
  exit 1
fi

for dir in ~/projects/*/; do
  name=$(basename "$dir")

  if [[ " $SKIP " == *" $name "* ]]; then
    echo "Skipping $name (on the skip list)"
    continue
  fi

  if [ ! -d "$dir/.git" ]; then
    echo "Skipping $name (not a git repo)"
    continue
  fi

  if [ -f "$dir/LICENSE" ]; then
    echo "Skipping $name (already has a LICENSE)"
    continue
  fi

  cd "$dir" || continue
  cp "$SOURCE" LICENSE
  git add LICENSE
  git commit -m "Add MIT licence"
  git push
  echo "Done: $name"
done
