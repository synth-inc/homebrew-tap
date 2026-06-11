cask "onit-dictate" do
  version "4.0,70"
  sha256 "0c8403280caf8616d4836eacf6e519c45b998a11b19d5fcfed2895e033515159"

  url "https://syntheticco.blob.core.windows.net/onit-release/Onit-#{version.csv.second}.dmg",
      verified: "syntheticco.blob.core.windows.net/onit-release/"
  name "Onit Dictate"
  desc "Voice dictation with on-device speech recognition"
  homepage "https://www.getonit.ai/"

  livecheck do
    url "https://onit-server-v2-a93590258ea2.herokuapp.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Onit.app"

  uninstall quit: "inc.synth.Onit"

  zap trash: [
    "~/.cache/huggingface/hub/models--ibm-granite--granite-speech-4.1-2b",
    "~/Documents/huggingface/models/argmaxinc/whisperkit-coreml",
    "~/Documents/SmartPositioningDebug",
    "~/Library/Application Support/FluidAudio/Models/parakeet-tdt-0.6b-v3-coreml",
    "~/Library/Application Support/Onit",
    "~/Library/Caches/inc.synth.Onit",
    "~/Library/Caches/qwen3-speech",
    "~/Library/HTTPStorages/inc.synth.Onit",
    "~/Library/Preferences/inc.synth.Onit.plist",
    "~/Library/Saved Application State/inc.synth.Onit.savedState",
  ]
end
