#!/bin/bash
cd /root/obsidian-vault
git add -A
if ! git diff --cached --quiet; then
    git commit -m "auto-sync: $(date '+%Y-%m-%d %H:%M')"
fi
