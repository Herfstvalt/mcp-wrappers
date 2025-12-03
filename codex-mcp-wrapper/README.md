# Codex MCP Wrapper

MCP wrapper for Codex/GPT CLI tool with stderr logging support for Claude Code.

## Installation

Using Claude Code CLI (easiest):

```bash
claude mcp add codex --scope user -- npx -y codex-mcp-wrapper
```

Or install globally:

```bash
npm install -g codex-mcp-wrapper
```

Then add to `~/.claude/mcp.json`:

```json
{
  "mcpServers": {
    "codex": {
      "command": "codex-mcp-wrapper",
      "args": []
    }
  }
}
```

## Prerequisites

Make sure you have `codex-mcp-server` installed and authenticated:

```bash
npm install -g codex-mcp-server
codex auth
```

## What it does

This wrapper:
- Runs `codex-mcp-server`
- Redirects stderr to `~/codex-mcp.log` for debugging
- Keeps stdout clean for JSON-RPC communication with Claude Code

## Debugging

Check logs if you encounter issues:

```bash
tail -f ~/codex-mcp.log
```

## License

MIT
