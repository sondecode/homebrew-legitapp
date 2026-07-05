cask "legitapp" do
  version "1.0.5"
  sha256 "97e45dac14c416ea4dcf4c2a433dfc2dff97b71c5ee700689a94afd024cf3478"

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
