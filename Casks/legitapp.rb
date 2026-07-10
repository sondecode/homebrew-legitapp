cask "legitapp" do
  version "1.0.6"
  sha256 "453c00d6a40381d5fcb8a9919c0c885c2e55b4fe0cef9c86b37dd0b53faf945c"

  url "https://github.com/sondecode/legitapp/releases/download/v#{version}/LegitApp.dmg"
  name "LegitApp"
  desc "Homebrew Cask manager with Vietnamese-first experience"
  homepage "https://github.com/sondecode/legitapp"

  livecheck do
    url :url
    strategy :github_releases
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "LegitApp.app"

  zap trash: [
    "~/Library/Application Support/LegitApp",
    "~/Library/Caches/com.sondecode.LegitApp",
    "~/Library/Preferences/com.sondecode.LegitApp.plist",
    "~/Library/Saved Application State/com.sondecode.LegitApp.savedState",
  ]
end
