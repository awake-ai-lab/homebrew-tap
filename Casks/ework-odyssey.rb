cask "ework-odyssey" do
  version "1.4.0"
  sha256 "67b8ce009a653f873072b34e6c90b43f099ccd5d55756906307bddd9b378bf3d"

  url "https://updates.evanarts.com/releases/v#{version}/sherlock-mac-arm64.dmg",
      verified: "updates.evanarts.com/"
  name "EWork Odyssey"
  desc "Local-first AI workspace for research, notes, and presentations"
  homepage "https://github.com/awake-ai-lab/homebrew-tap"

  livecheck do
    url "https://updates.evanarts.com/notarized/latest/latest-mac.yml"
    regex(/^version:\s*["']?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "EWork Odyssey.app"
end
