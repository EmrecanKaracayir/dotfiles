# Kanata Config Layout

This folder documents a simple Kanata config layout for macOS.

## Main Paths

Kanata config in this repo is organized as:

- `~/.config/kanata/*.kbd`
- `/Library/LaunchDaemons/com.karacayir.kanata.plist`
- `/Library/LaunchDaemons/org.pqrs.karabiner-vhid.plist`
- `/Library/LaunchDaemons/org.pqrs.karabiner-vhid-activator.plist`

## What Goes Where

### `~/.config/kanata/*.kbd`

Use this folder for Kanata keyboard definition files.

- One file per physical keyboard or layout.
- Keep `defcfg`, `defalias`, `defsrc`, and `deflayer` blocks in the same file.
- Scope each config to a device using `macos-dev-names-include`.

### `com.karacayir.kanata.plist`

Use this as the LaunchDaemon that runs Kanata at boot.

- Points `--cfg` at the active `.kbd` file under `~/.config/kanata/`.
- `RunAtLoad` and `KeepAlive` keep the service always on.
- Logs go to `/Library/Logs/com.karacayir.kanata/`.

### `org.pqrs.karabiner-vhid.plist`

Use this as the LaunchDaemon for the Karabiner VirtualHIDDevice daemon.

- Required by Kanata on macOS to inject key events.
- Runs the daemon shipped with Karabiner-DriverKit-VirtualHIDDevice.

### `org.pqrs.karabiner-vhid-activator.plist`

Use this as the LaunchDaemon that activates the VirtualHIDDevice driver.

- Calls the VirtualHIDDevice Manager with `activate` at boot.
- Needed once per boot so the driver is ready before Kanata starts.

## Important Notes

Kanata on macOS depends on [Karabiner-DriverKit-VirtualHIDDevice](https://github.com/pqrs-org/Karabiner-DriverKit-VirtualHIDDevice). Install it before loading the LaunchDaemons above.

The LaunchDaemon files live under `/Library/LaunchDaemons/` and must be owned by `root:wheel` to load with `launchctl`.

After installing, the Karabiner DriverKit system extension requires manual approval. Go to **System Settings > General > Login Items & Extensions > Driver Extensions** and enable the Karabiner DriverKit VirtualHIDDevice entry. If the entry does not appear, run the VirtualHIDDevice Manager once manually, then enable the driver extension from System Settings. Without this approval, the extension stays in `activated waiting for user` state and Kanata will fail with `Karabiner-VirtualHIDDevice driver is not activated`.
