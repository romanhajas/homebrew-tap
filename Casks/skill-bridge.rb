cask "skill-bridge" do
  version "2.3"
  sha256 "1dd7001450ec57d35a7f37b1e5729570669ef90ff5d426acdb2c2e9914214768"

  url "https://github.com/romanhajas/skill-bridge/releases/download/v#{version}/Skill-Bridge.zip"
  name "Skill Bridge"
  desc "Keeps Claude app skills in step with the ones you edit for Claude Code"
  homepage "https://github.com/romanhajas/skill-bridge"

  auto_updates true
  depends_on macos: :sonoma

  app "Skill Bridge.app"
  binary "#{appdir}/Skill Bridge.app/Contents/MacOS/SkillBridge", target: "skill-bridge"

  zap trash: [
    "~/.config/skill-bridge",
    "~/Library/Preferences/io.github.romanhajas.skill-bridge.plist",
  ]
end
