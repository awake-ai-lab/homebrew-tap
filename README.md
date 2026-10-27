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

To adopt an identical existing release:

```bash
brew install --cask --adopt ework-odyssey
```

Homebrew rejects adoption when the existing application differs. Back up and move the previous `.app` elsewhere before installing in that case. Keep the app's data in `~/Library/Application Support`; do not delete it when changing installation methods.

## Uninstall

```bash
brew uninstall --cask ework-odyssey
```

This Cask has no `zap` stanza and does not delete your conversations, settings or other app data.

## 中文说明

本软件源用于安装和升级 EWork Odyssey，首期支持 Apple Silicon Mac、macOS 12 及以上系统。首次执行上面的 `brew tap` 与 `brew install` 命令，后续退出客户端再执行 `brew update` 和 `brew upgrade --cask ework-odyssey`。客户端内更新仍可使用。

已有手动安装的同版正式应用，可以使用 `--adopt` 接管；如果文件不同，先备份并移走原 `.app` 再安装。不要删除应用数据目录。普通卸载保留应用数据。

## Release maintenance

The maintainers update the version and SHA-256 together only after the corresponding Cloudflare release has passed public verification. The client repository's `scripts/update-homebrew-cask.mjs` verifies the final DMG against the public notarized update feed before generating this Cask. No client source code or credentials are stored in this tap.

The MIT license in this repository covers the tap configuration and documentation; application and bundled-component licensing is separate.
