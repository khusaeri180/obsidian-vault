#!/bin/bash
cd /root/obsidian-vault

# Auto-commit changes
git add -A
if ! git diff --cached --quiet; then
    git commit -m "auto-sync: $(date '+%Y-%m-%d %H:%M')"
    echo "$(date): Committed changes" >> /tmp/obsidian-sync.log
else
    echo "$(date): No changes" >> /tmp/obsidian-sync.log
fi
