cask "skill-bridge" do
  version "2.2"
  sha256 "3de28fdd5fef07f1989999ed8ebc6de5b2fbf41be24adf656e10a060f22a3751"

  url "https://github.com/romanhajas/skill-bridge/releases/download/v#{version}/Skill-Bridge.zip"
  name "Skill Bridge"
  desc "Keeps Claude app skills in step with the ones you edit for Claude Code"
  homepage "https://github.com/romanhajas/skill-bridge"

  depends_on macos: :sonoma

  app "Skill Bridge.app"
  binary "#{appdir}/Skill Bridge.app/Contents/MacOS/SkillBridge", target: "skill-bridge"

  zap trash: [
    "~/.config/skill-bridge",
    "~/Library/Preferences/io.github.romanhajas.skill-bridge.plist",
  ]
end
