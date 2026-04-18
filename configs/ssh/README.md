# SSH Configs

This folder documents a simple SSH config layout.

## Main Path

SSH reads config from:

- `~/.ssh/config`

## What Goes Where

### `~/.ssh/config`

Use this as the main SSH client config file.

- Define `Host` blocks for host-specific settings.
- Keep connection defaults and key behavior here.
- Add one host block per service or machine.

## Host Blocks

A common pattern is:

- `Host <name-or-domain>`
- `HostName <real-hostname>`
- `User <ssh-user>`
- `IdentityFile <private-key-path>`

Group related hosts together and keep names consistent so commands like `ssh <host>` stay simple.
