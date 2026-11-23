cask "ework-odyssey" do
  version "1.7.3"
  sha256 "32841f11893496db86caedf06f60f676f54ada0ff970b5665ef0cf63fcfb939c"

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
