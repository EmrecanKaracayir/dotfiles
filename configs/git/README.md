# Git Configs

This folder documents a simple Git config layout.

## Main Paths

Git config in this repo is organized as:

- `~/.gitconfig`
- `~/.config/git/**/.gitconfig`
- `~/.config/git/allowed_signers`
- `~/.local/bin/ssh-sign`

## What Goes Where

### `~/.gitconfig`

Use this as the base Git config.

- Keep global defaults here.
- Add `includeIf` rules here to load extra config by directory, repo, or condition.
- Keep SSH signing helpers here (`gpg.ssh.program`, `gpg.ssh.allowedSignersFile`) so they work in every repo.

### `~/.config/git/**/.gitconfig`

Use this for scoped or profile-specific config.

- One file per profile/provider/team.
- Put identity and signing settings in the profile file.
- Keep machine-agnostic defaults in the base config.

### `~/.config/git/allowed_signers`

Use this as the list of trusted SSH signing keys.

- One line per key: `<email> namespaces="git" <public-key>`.
- Used for local verification (`git verify-commit`, `git log --show-signature`).
- Add collaborators' keys here to verify their signatures too.

### `~/.local/bin/ssh-sign`

Use this as Git's SSH signing program (`gpg.ssh.program`).

- A Fish script that wraps `ssh-keygen`.
- Before signing, loads the signing key into the agent with `ssh-add --apple-use-keychain`.
- Must be executable (`chmod +x`).

## Include Pattern

This setup uses conditional includes from `~/.gitconfig` to load profile config files when a repo path matches.

## SSH Signing

Git signs with `ssh-keygen`, which can't read passphrases from the macOS Keychain, so every commit asked for the passphrase.

`ssh-sign` fixes this by loading the signing key into the agent with `ssh-add --apple-use-keychain` before signing.
