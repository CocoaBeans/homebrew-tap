cask "mimamori" do
  version "1.0.0"
  sha256 "7fb3f0e61f299a9c5955af1befdb9fa80bf3954db900811fa6614f15a9df456f"

  url "https://github.com/CocoaBeans/mimamori/releases/download/v#{version}/Mimamori-#{version}.dmg"
  name "Mimamori"
  desc "Keeps watch over git worktrees while coding agents work in them"
  homepage "https://github.com/CocoaBeans/mimamori"

  livecheck do
    url "https://github.com/CocoaBeans/mimamori/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Mimamori.app"

  zap trash: [
    "~/Library/Application Support/Mimamori",
    "~/Library/Caches/com.kevinross.Mimamori",
    "~/Library/HTTPStorages/com.kevinross.Mimamori",
    "~/Library/HTTPStorages/com.kevinross.Mimamori.binarycookies",
    "~/Library/Preferences/com.kevinross.Mimamori.plist",
  ]
end
