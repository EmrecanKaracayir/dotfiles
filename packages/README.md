# Packages

This folder contains installed package lists grouped by where they are installed from.

## Structure

- Each subfolder is named after an install source:
  - `brew`: Homebrew
  - `app-store`: Mac App Store
- Each folder's README lists its packages, with a one-line reason for each.

## Sets

Packages are grouped into sets, so each Mac only gets what it needs.

- `Essential Set`: installed on every Mac.
- Other sets are added on top based on what the Mac is used for.
- Examples: `Creator Set`, `Mobile Development Set`, `Web Development Set`.

## Notes

This folder records installed software rather than configuration files.

Software is installed only through the Mac App Store or Homebrew.
The App Store comes first; Homebrew is for software the App Store doesn't have.
