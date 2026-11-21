cask "mimamori" do
  version "1.6.0"
  sha256 "8fe7e6a1008664bab3992f6fe0059d8031d439eb4e21dd76d107dc9d53ec0921"

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
