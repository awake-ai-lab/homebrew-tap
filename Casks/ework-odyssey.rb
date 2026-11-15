cask "ework-odyssey" do
  version "1.6.1"
  sha256 "57b872d1500d7852b56c2a1a6247b19ff52a16c923fe60849577d66d8f8a0873"

  url "https://updates.evanarts.com/releases/v#{version}/sherlock-mac-arm64.dmg"
  name "EWork Odyssey"
  desc "Local-first AI workspace for research, notes, and presentations"
  homepage "https://github.com/awake-ai-lab/homebrew-tap"

  livecheck do
    url "https://updates.evanarts.com/notarized/latest/latest-mac.yml"
    regex(/^version:\s*["']?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "EWork Odyssey.app"
end
