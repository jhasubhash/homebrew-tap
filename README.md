# Homebrew tap

Homebrew casks for my macOS apps.

| App | Install |
|---|---|
| [oneprompt](https://github.com/jhasubhash/oneprompt): a terminal drawn like an ink painting on hand-made paper | `brew install --cask jhasubhash/tap/oneprompt` |
| [Onecast](https://github.com/jhasubhash/onecast): a launcher, AI cockpit and custom docks, that also runs Raycast extensions | `brew install --cask jhasubhash/tap/onecast` |
| [OnePaper](https://github.com/jhasubhash/onepaper-releases): beautiful notes for engineers, with code, math and whiteboards | `brew install --cask jhasubhash/tap/onepaper` |

On an Intel Mac, install `jhasubhash/tap/onecast-universal` instead of `onecast`.

`brew upgrade --cask oneprompt` updates oneprompt. Onecast and OnePaper update themselves, so their
casks declare `auto_updates` and `brew upgrade` leaves them alone. Each app's release script updates its cask.
