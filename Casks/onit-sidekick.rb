cask "onit-sidekick" do
  # version & sha256 are filled in automatically by macos/release.sh at release time.
  version "4.0,70"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/synth-inc/onit/releases/download/v#{version.csv.first}/SideKick-#{version.csv.first}.dmg",
      verified: "github.com/synth-inc/onit/"
  name "SideKick"
  desc "AI chat panel that docks next to your active window with on-screen context"
  homepage "https://www.getonit.ai/"

  livecheck do
    url "https://raw.githubusercontent.com/synth-inc/onit/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "SideKick.app"

  uninstall quit: "inc.synth.onit.sidekick"

  zap trash: [
    "~/Library/Caches/inc.synth.onit.sidekick",
    "~/Library/HTTPStorages/inc.synth.onit.sidekick",
    "~/Library/Preferences/inc.synth.onit.sidekick.plist",
    "~/Library/Saved Application State/inc.synth.onit.sidekick.savedState",
  ]
end
