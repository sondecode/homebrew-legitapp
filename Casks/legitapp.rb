cask "legitapp" do
  version "1.0.2"
  sha256 "24c5f9dd8a758e84df6cea61a8be6af918102af2a607651a7c8751d1ef7ab1e9"

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
