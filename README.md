# Zennoxa Homebrew Tap

Homebrew formulae for [Zennoxa Shield](https://github.com/Zennoxa/shield) — the all-in-one code security scanner (SAST, secrets, dependencies, containers & IaC), ranked by real-world risk.

## Install

```sh
brew install zennoxa/tap/shield
shield version
shield scan .
```

`brew install zennoxa/tap/shield` is shorthand for tapping this repo and installing the `shield` formula. The CLI runs locally — nothing leaves your machine unless you pass `--submit`.

## Upgrade

```sh
brew update
brew upgrade shield
```

More: [zennoxa.com](https://zennoxa.com) · [Docs](https://zennoxa.com/docs) · [CLI repo](https://github.com/Zennoxa/shield)
