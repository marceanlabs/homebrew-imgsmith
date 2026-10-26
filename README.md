# Marcean Homebrew tap

Three command line tools from [marceanlabs](https://github.com/marceanlabs), all
Apache-2.0 and all shipped as ready built binaries, so nothing compiles during an
install.

| Tool | What it does |
|---|---|
| [imgsmith](https://github.com/marceanlabs/imgsmith) | Convert, resize, crop and thumbnail images |
| [pdfsurgeon](https://github.com/marceanlabs/pdfsurgeon) | Take pages out of a PDF, put PDFs together, split one into many |
| [xlsmith](https://github.com/marceanlabs/xlsmith) | Read a spreadsheet and get the data out as CSV or JSON |

## Install

```console
$ brew install marceanlabs/imgsmith/imgsmith
$ brew install marceanlabs/imgsmith/pdfsurgeon
$ brew install marceanlabs/imgsmith/xlsmith
```

Or tap once, then install by name:

```console
$ brew tap marceanlabs/imgsmith
$ brew install pdfsurgeon
```

Upgrade everything at once:

```console
$ brew update && brew upgrade
```

Each formula downloads a binary built for your machine (Apple silicon or Intel on
macOS, x86_64 or arm64 on Linux) and checks it against a SHA-256 checksum.

## Also on crates.io

If you would rather build from source:

```console
$ cargo install imgsmith pdfsurgeon xlsmith
```
