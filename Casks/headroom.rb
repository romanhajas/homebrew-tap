cask "headroom" do
  version "1.1.1"
  sha256 "08ac2fbe2c8a207fd8de5f408f95185ec6c7172f437d19a4cf6c0b98d3ea49b9"

  url "https://github.com/romanhajas/headroom/releases/download/v#{version}/Headroom.zip"
  name "Headroom"
  desc "Widget and menu bar app showing how much of your Claude plan is left"
  homepage "https://github.com/romanhajas/headroom"

  depends_on macos: :sonoma

  app "Headroom.app"

  uninstall quit: "io.github.romanhajas.headroom"

  zap trash: [
    "~/Library/Application Support/Headroom",
    "~/Library/Preferences/io.github.romanhajas.headroom.plist",
  ]
end
