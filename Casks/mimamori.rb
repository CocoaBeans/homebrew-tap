cask "mimamori" do
  version "1.5.0"
  sha256 "b6faf6a940d447776ed57f1d8d97510fbb41bbea5dab0351a1a8839e6fc3ca30"

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
