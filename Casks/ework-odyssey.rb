cask "ework-odyssey" do
  version "1.6.4"
  sha256 "b486becb121996384eb1294415ea33a10901fd74c0405325e08d1b83b73dd3d3"

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
