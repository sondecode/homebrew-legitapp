cask "legitapp" do
  version "1.0.3"
  sha256 "98bfb21d0b3c2f2287be9ffae7880219cf85a9a2d8bc9153fe31ac303ba6b70b"

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
