cask "headroom" do
  version "1.2"
  sha256 "d30ee94b76025132b6995e896283ec3356ed9c23306acf7d20d6d6fbd0958472"

  url "https://github.com/romanhajas/headroom/releases/download/v#{version}/Headroom.zip"
  name "Headroom"
  desc "Widget and menu bar app showing how much of your Claude plan is left"
  homepage "https://github.com/romanhajas/headroom"

  auto_updates true
  depends_on macos: :sonoma

  app "Headroom.app"

  uninstall quit: "io.github.romanhajas.headroom"

  zap trash: [
    "~/Library/Application Support/Headroom",
    "~/Library/Preferences/io.github.romanhajas.headroom.plist",
  ]
end
