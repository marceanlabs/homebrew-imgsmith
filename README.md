# imgsmith Homebrew tap

Install [imgsmith](https://github.com/marceanlabs/imgsmith), a single-binary image
converter with no delegates and no C dependencies.

```console
$ brew install marceanlabs/imgsmith/imgsmith
```

Or tap first, then install by name:

```console
$ brew tap marceanlabs/imgsmith
$ brew install imgsmith
```

Upgrade:

```console
$ brew update && brew upgrade imgsmith
```

The formula installs a prebuilt binary for the current platform (Apple silicon or
Intel on macOS, x86_64 or arm64 on Linux) and verifies the download with a SHA-256
checksum. Nothing is compiled at install time.
