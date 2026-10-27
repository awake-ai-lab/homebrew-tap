# EWork Odyssey Homebrew Tap

Install and upgrade EWork Odyssey on **Apple Silicon Macs running macOS 12 Monterey or later**.

## Install

```bash
brew tap awake-ai-lab/tap
brew install --cask ework-odyssey
```

The app is installed at `/Applications/EWork Odyssey.app`. The Cask downloads the signed and notarized release from `updates.evanarts.com`, with a fixed version and SHA-256 checksum.

## Upgrade

Quit EWork Odyssey, then run:

```bash
brew update
brew upgrade --cask ework-odyssey
```

In-app updates remain available. This Cask declares `auto_updates true`, so specify `ework-odyssey` explicitly when upgrading with Homebrew. Homebrew downloads the complete DMG; the app's own updater can continue to use differential updates.

## Existing manual installation

Quit the app, back up and move the previous `/Applications/EWork Odyssey.app` to another folder, then run the install command above. Keep the app's data in `~/Library/Application Support`; do not delete it when changing installation methods.

Avoid `--force` and `--adopt` for this migration: adopting an app that updates itself can register an older existing app as the current Cask version without replacing its files.

## Uninstall

```bash
brew uninstall --cask ework-odyssey
```

This Cask has no `zap` stanza and does not delete your conversations, settings or other app data.

## 中文说明

本软件源用于安装和升级 EWork Odyssey，首期支持 Apple Silicon Mac、macOS 12 及以上系统。首次执行上面的 `brew tap` 与 `brew install` 命令，后续退出客户端再执行 `brew update` 和 `brew upgrade --cask ework-odyssey`。客户端内更新仍可使用。

如果已有手动安装的应用，先退出、备份并移走原 `/Applications/EWork Odyssey.app`，再执行安装命令。不要使用 `--force` 强行覆盖，也不要使用可能将旧应用登记为新版的 `--adopt`。不要删除应用数据目录，普通卸载保留应用数据。

## Release maintenance

The maintainers update the version and SHA-256 together only after the corresponding Cloudflare release has passed public verification. The client repository's `scripts/update-homebrew-cask.mjs` verifies the final DMG against the public notarized update feed before generating this Cask. No client source code or credentials are stored in this tap.

The MIT license in this repository covers the tap configuration and documentation; application and bundled-component licensing is separate.
