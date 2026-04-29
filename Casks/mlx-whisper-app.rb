cask "mlx-whisper-app" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.4"
  sha256 arm: "7579bfa48c5fda47295a1c31c995e25e4afd04410f070de84215d1a3920a9785",
         intel: "66467c617b1897d25e0c529a6747b2c5545f49e0618466e01a89c92618991471" # Placeholder

  url "https://github.com/ericclose/MLXWhisperApp/releases/download/v#{version}/MLXWhisperApp.#{arch}.#{version}.dmg"
  name "MLX Whisper App"
  desc "Local Whisper transcription powered by MLX"
  homepage "https://github.com/ericclose/MLXWhisperApp"

  app "MLXWhisperApp.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/MLXWhisperApp.app"]
  end

  zap trash: [
    "~/Library/Application Support/MLXWhisperApp",
    "~/Library/Caches/com.ericclose.MLXWhisperApp",
    "~/Library/Preferences/com.ericclose.MLXWhisperApp.plist",
    "~/Library/Saved Application State/com.ericclose.MLXWhisperApp.savedState",
  ]
end
