cask "ework-odyssey" do
  version "1.6.8"
  sha256 "d6e686281de39a0e29463887672f014bd68de56b28efc159072df7abcb16be29"

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
