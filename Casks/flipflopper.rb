cask "flipflopper" do
  version "0.10.1"

  if Hardware::CPU.intel?
    sha256 "9b86de90b2e0be5f3b2ce22a309a1b8bacb9d816db06f2d36a5ebd70a5a23a7d"
    url "https://github.com/AraujoJordan/FlipFlopper/releases/download/#{version}/FlipFlopper_#{version}_x64.dmg"
  else
    sha256 "135c32a0b29526e785f0e7e438636b26b92f12b8ef072d81918e944df4994c66"
    url "https://github.com/AraujoJordan/FlipFlopper/releases/download/#{version}/FlipFlopper_#{version}_aarch64.dmg"
  end

  name "FlipFlopper"
  desc "Cross-platform desktop cockpit for CLI AI coding agents"
  homepage "https://github.com/AraujoJordan/FlipFlopper"

  app "FlipFlopper.app"

  zap trash: [
    "~/Library/Application Support/com.araujojordan.flipflopper",
    "~/Library/Caches/com.araujojordan.flipflopper",
    "~/Library/Preferences/com.araujojordan.flipflopper.plist",
    "~/Library/Saved Application State/com.araujojordan.flipflopper.savedState",
  ]
end
