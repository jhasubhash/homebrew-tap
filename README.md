# Homebrew tap

Homebrew casks for my macOS apps.

| App | Install |
|---|---|
| [oneprompt](https://github.com/jhasubhash/oneprompt): a terminal drawn like an ink painting on hand-made paper | `brew install --cask jhasubhash/tap/oneprompt` |
| [Onecast](https://github.com/jhasubhash/onecast): a launcher, AI cockpit and custom docks, that also runs Raycast extensions | `brew install --cask jhasubhash/tap/onecast` |

On an Intel Mac, install `jhasubhash/tap/onecast-universal` instead of `onecast`.

`brew upgrade --cask oneprompt` updates oneprompt. Onecast updates itself, so its casks declare
`auto_updates` and `brew upgrade` leaves it alone. Each app's release script updates its cask.
