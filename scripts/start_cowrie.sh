#!/bin/bash
# start_cowrie.sh (template)
# Start cowrie in the foreground (for testing). Ensure cowrie.cfg has correct paths.
set -e
COWRIE_DIR="/home/cowrie/cowrie"
if [ ! -d "$COWRIE_DIR" ]; then
  echo "Cowrie directory not found at $COWRIE_DIR. Edit this script to match your path."
  exit 1
fi
echo "Starting cowrie (simulated) - replace with real start command"
# sudo -u cowrie $COWRIE_DIR/bin/cowrie start
echo "Cowrie start template finished."
