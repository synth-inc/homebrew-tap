cask "onit-quickedit" do
  # version & sha256 are filled in automatically by macos/release.sh at release time.
  version "4.0,70"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/synth-inc/onit-quickedit/releases/download/v#{version.csv.first}/QuickEdit-#{version.csv.first}.dmg",
      verified: "github.com/synth-inc/onit-quickedit/"
  name "QuickEdit"
  desc "Inline AI text editing triggered from any app"
  homepage "https://www.getonit.ai/"

  livecheck do
    url "https://raw.githubusercontent.com/synth-inc/onit-quickedit/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "QuickEdit.app"

  uninstall quit: "inc.synth.onit.quickedit"

  zap trash: [
    "~/Library/Caches/inc.synth.onit.quickedit",
    "~/Library/HTTPStorages/inc.synth.onit.quickedit",
    "~/Library/Preferences/inc.synth.onit.quickedit.plist",
    "~/Library/Saved Application State/inc.synth.onit.quickedit.savedState",
  ]
end
