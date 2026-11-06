cask "mimamori" do
  version "1.2.1"
  sha256 "e19be31b3a67b4f34fef2d5de7fe9ccb5f5e9211a605298f9f54affef3286b35"

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
