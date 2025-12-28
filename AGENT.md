# Agent Instructions

## Repository Context

This is a **chezmoi** dotfiles repository for managing system configurations across machines.

## Key Conventions

### File Naming

- Files prefixed with `dot_` become dotfiles (e.g., `dot_bashrc.tmpl` → `~/.bashrc`)
- Files with `.tmpl` extension are processed as Go templates
- `run_onchange_*.sh.tmpl` scripts execute when their content changes

### Directory Structure

- `dot_config/` → `~/.config/`
- `dot_local/` → `~/.local/`
- Root-level files without `dot_` prefix remain as repository documentation only

### Templates

- Use Go template syntax with chezmoi data
- Common variable: `{{ .chezmoi.hostname }}` for host-specific configurations
- Use `{{- if -}}` for conditional content
- You can get all available variables by `chezmoi data`

## Workflow

When modifying configurations:
1. Edit files in this repository (source state)
2. Test changes: `chezmoi apply --dry-run --verbose`. DO NOT RUN WITHOUT `--dry-run` option.
3. Test on the target machine
4. Commit and push changes

## Commit Convention

Use **Conventional Commits** format for all commits:

```
<type>(<scope>): <description>

[optional body]

[optional footer(s)]
```

### Types
- `feat`: New feature or configuration
- `fix`: Bug fix or configuration correction
- `docs`: Documentation changes (README, AGENT.md, etc.)
- `chore`: Maintenance tasks (package updates, cleanup)
- `refactor`: Code/config restructuring without behavior change
- `style`: Formatting changes (whitespace, indentation)
- `test`: Adding or updating tests

## Package Management

### MacOS

- Package manager: homebrew

### Omarchy(Arch Linux)

- Primary package manager: `yay`
- Use `--noconfirm --needed` flags for idempotent installations


