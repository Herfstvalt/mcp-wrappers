#!/bin/bash
# Wrapper for codex-mcp-server with stderr logging
# Logs to ~/codex-mcp.log

LOG_FILE="$HOME/codex-mcp.log"

# Add timestamp to log
echo "=== codex-mcp-server started at $(date) ===" >> "$LOG_FILE" 2>&1

# Run codex-mcp-server with all args, redirect stderr to log file
# stdout stays clean for JSON-RPC communication
exec codex-mcp-server "$@" 2>> "$LOG_FILE"
