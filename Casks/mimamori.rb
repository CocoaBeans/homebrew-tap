cask "mimamori" do
  version "1.5.1"
  sha256 "bc7e7c2d9016cbe5283d858b674a407b2817bf46adb80011253413c89212a30b"

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
