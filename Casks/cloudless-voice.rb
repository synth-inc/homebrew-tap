cask "cloudless-voice" do
  version "4.8,83"
  sha256 "d744d440f26de0f1ae6f098c3e9a9826091830ad1b08cd51ad080faabf3d6357"

  url "https://syntheticco.blob.core.windows.net/onit-release/Onit-#{version.csv.second}.dmg",
      verified: "syntheticco.blob.core.windows.net/onit-release/"
  name "Cloudless Voice"
  desc "On-device voice dictation"
  homepage "https://www.cloudless.so/"

  livecheck do
    url "https://onit-server-v2-a93590258ea2.herokuapp.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Cloudless Voice.app"

  uninstall quit: "inc.synth.Onit"

  zap trash: [
    "~/.cache/huggingface/hub/models--ibm-granite--granite-speech-4.1-2b",
    "~/Documents/huggingface/models/argmaxinc/whisperkit-coreml",
    "~/Library/Application Support/FluidAudio/Models/parakeet-tdt-0.6b-v3",
    "~/Library/Application Support/Onit",
    "~/Library/Caches/inc.synth.Onit",
    "~/Library/Caches/qwen3-speech",
    "~/Library/HTTPStorages/inc.synth.Onit",
    "~/Library/Preferences/inc.synth.Onit.plist",
    "~/Library/Saved Application State/inc.synth.Onit.savedState",
  ]
end
