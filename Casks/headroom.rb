cask "headroom" do
  version "1.1"
  sha256 "19f5695035caf062bc3138d5d932d388c7faa7c54b9d67b20544766a84344f62"

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
