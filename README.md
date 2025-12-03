# MCP Wrappers for Claude Code

Wrapper scripts that add logging support to Gemini and Codex MCP servers for easier debugging with Claude Code.

## Quick Install (Recommended)

Using Claude Code CLI - just 2 commands:

```bash
claude mcp add gemini-cli --scope user -- npx -y gemini-mcp-wrapper
claude mcp add codex --scope user -- npx -y codex-mcp-wrapper
```

That's it! No file copying, no path management, no manual configuration needed.

## What's Included

- **gemini-mcp-wrapper** - Wraps `gemini-mcp-tool` with logging to `~/gemini-mcp.log`
- **codex-mcp-wrapper** - Wraps `codex-mcp-server` with logging to `~/codex-mcp.log`

## Prerequisites

Make sure you have the underlying CLI tools installed and authenticated:

```bash
# For Gemini: Install both the CLI and MCP server
npm install -g @google/gemini-cli gemini-mcp-tool

# For Codex: Install the MCP server
npm install -g codex-mcp-server

# Authenticate (if not already done)
gemini auth
codex auth
```

## Alternative: Manual Installation

If you prefer to install globally first:

```bash
# Install wrappers
npm install -g gemini-mcp-wrapper codex-mcp-wrapper
```

Then add to `~/.claude/mcp.json`:

```json
{
  "mcpServers": {
    "gemini-cli": {
      "command": "gemini-mcp-wrapper",
      "args": []
    },
    "codex": {
      "command": "codex-mcp-wrapper",
      "args": []
    }
  }
}
```

Restart Claude Code after configuration.

## Debugging

Check the log files if you encounter issues:

```bash
tail -f ~/gemini-mcp.log
tail -f ~/codex-mcp.log
```

## License

MIT
