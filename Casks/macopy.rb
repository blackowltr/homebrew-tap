cask "macopy" do
  version "1.0.0"
  sha256 "615103df0bd5229b68fe4542b913b3630bb4a594aade1b7957c6fb11eaddd60f"

  url "https://github.com/blackowltr/Macopy/releases/download/v#{version}/Macopy-#{version}.dmg"
  name "Macopy"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/blackowltr/Macopy"

  depends_on macos: :monterey

  app "Macopy.app"

  uninstall quit: "com.blackowltr.macopy"
end
