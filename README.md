# Dotfiles

my dotfiles

## Managed files

- `~/.config/opencode/opencode.jsonc`

## Add or Remove

To add a new config file:

1. Create or edit it in `$HOME` at the path it should have.
1. Add it with `yadm add <path>`.
1. Commit the change.

To remove a config file:

1. Delete it from `$HOME`.
1. Remove it from tracking with `yadm rm <path>`.
1. Commit the change.

## Purpose

- Version config changes for my personal files
- Keep everything in one place for machine changes

## Usage

Install `yadm`, then clone this repo with it or bootstrap an existing checkout.

```bash
yadm clone <repo-url>
```

or, if the repo is already present:

```bash
yadm bootstrap
```
