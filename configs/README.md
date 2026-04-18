# Configs

This folder contains configuration files for core tools.

## Structure

- Each subfolder is named after the tool it configures, such as `fish`, `ghostty`, `git`, `kanata`, `ssh`, or `starship`.
- Files inside each folder usually mirror their real location on disk by keeping the same path under `~`.
- When a tool also needs system-level files, those paths are stored here too. For example, `kanata` includes files under `Library/LaunchDaemons/`.

## Notes

Each config folder includes its own README with a short layout guide.
