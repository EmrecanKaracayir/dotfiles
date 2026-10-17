# SSH Configs

This folder documents a simple SSH config layout.

## Main Paths

SSH config in this repo is organized as:

- `~/.ssh/config`
- `~/.ssh/keys/**/*.pub`

## What Goes Where

### `~/.ssh/config`

Use this as the main SSH client config file.

- Define `Host` blocks for host-specific settings.
- Keep connection defaults and key behavior here.
- Add one host block per service or machine.

### `~/.ssh/keys/**/*.pub`

Use this folder for SSH keys, grouped by purpose.

- Only public keys are tracked. `.gitignore` blocks everything else under `keys/`.
- Private keys stay on the machine and are created or copied manually.
- `keys/git/GitHub/signing_key.pub` is the Git commit signing key. See [configs/git](../git).

## Host Blocks

A common pattern is:

- `Host <name-or-domain>`
- `HostName <real-hostname>`
- `User <ssh-user>`
- `IdentityFile <private-key-path>`
- `AddKeysToAgent yes`
- `UseKeychain yes`

`UseKeychain` reads the key's passphrase from the macOS Keychain, and `AddKeysToAgent` loads the key into the agent on first use. Both only apply to `ssh` connections, not to Git commit signing.

Group related hosts together and keep names consistent so commands like `ssh <host>` stay simple.
