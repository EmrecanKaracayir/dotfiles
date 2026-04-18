# Git Configs

This folder documents a simple Git config layout.

## Main Paths

Git config in this repo is organized as:

- `~/.gitconfig`
- `~/.config/git/**/.gitconfig`

## What Goes Where

### `~/.gitconfig`

Use this as the base Git config.

- Keep global defaults here.
- Add `includeIf` rules here to load extra config by directory, repo, or condition.

### `~/.config/git/**/.gitconfig`

Use this for scoped or profile-specific config.

- One file per profile/provider/team.
- Put identity and signing settings in the profile file.
- Keep machine-agnostic defaults in the base config.

## Include Pattern

This setup uses conditional includes from `~/.gitconfig` to load profile config files when a repo path matches.
