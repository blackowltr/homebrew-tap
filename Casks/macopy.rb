cask "macopy" do
  version "1.0.0"
  sha256 "59cfb565ac5670cd01074952eaafdc7fa32baa15b8c1f86f1f2431b36e4df420"

  url "https://github.com/blackowltr/Macopy/releases/download/v#{version}/Macopy-#{version}.dmg"
  name "Macopy"
  desc "Clipboard history manager for macOS"
  homepage "https://github.com/blackowltr/Macopy"

  depends_on macos: :monterey

  app "Macopy.app"

  uninstall quit: "com.blackowltr.macopy"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Macopy.app"],
                   sudo: false
    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{appdir}/Macopy.app"],
                   sudo: false
  end
end
