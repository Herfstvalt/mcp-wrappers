# Gemini MCP Wrapper

MCP wrapper for Gemini CLI tool with stderr logging support for Claude Code.

## Installation

Using Claude Code CLI (easiest):

```bash
claude mcp add gemini-cli --scope user -- npx -y gemini-mcp-wrapper
```

Or install globally:

```bash
npm install -g gemini-mcp-wrapper
```

Then add to `~/.claude/mcp.json`:

```json
{
  "mcpServers": {
    "gemini-cli": {
      "command": "gemini-mcp-wrapper",
      "args": []
    }
  }
}
```

## Prerequisites

You need both the Gemini CLI and the MCP tool:

```bash
# Install Gemini CLI (official Google tool)
npm install -g @google/gemini-cli

# Install gemini-mcp-tool (MCP server for Claude Code)
npm install -g gemini-mcp-tool

# Authenticate with Gemini
gemini auth
```

## What it does

This wrapper:
- Runs `gemini-mcp-tool` via npx
- Redirects stderr to `~/gemini-mcp.log` for debugging
- Keeps stdout clean for JSON-RPC communication with Claude Code

## Debugging

Check logs if you encounter issues:

```bash
tail -f ~/gemini-mcp.log
```

## License

MIT
