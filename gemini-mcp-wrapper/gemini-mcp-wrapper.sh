#!/bin/bash
# Wrapper for gemini-mcp-tool with stderr logging
# Logs to ~/gemini-mcp.log

LOG_FILE="$HOME/gemini-mcp.log"

# Add timestamp to log
echo "=== gemini-mcp-tool started at $(date) ===" >> "$LOG_FILE" 2>&1

# Run gemini-mcp-tool with all args, redirect stderr to log file
# stdout stays clean for JSON-RPC communication
exec /opt/homebrew/bin/npx -y gemini-mcp-tool "$@" 2>> "$LOG_FILE"
