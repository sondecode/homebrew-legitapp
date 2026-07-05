cask "legitapp" do
  version "1.0.4"
  sha256 "458dccf716aa29c0173b7556ddf98c1ce5efbced1d2d19af1e45c458d1e637d4"

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
