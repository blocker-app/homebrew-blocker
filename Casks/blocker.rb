cask "blocker" do
  version "1.3.1"
  sha256 "38a4077e6f55b20ee6555295d4848e97c687d8c180c7fe88144d004ac4cb8ae2"

  url "https://github.com/blocker-app/blocker-releases/releases/download/v#{version}/blocker-#{version}.dmg",
      verified: "github.com/blocker-app/blocker-releases/"
  name "Blocker"
  desc "Minimal website blocker with recurring schedules"
  homepage "https://getblocker.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :monterey"

  app "Blocker.app"

  zap trash: [
    "~/Library/Application Support/Blocker",
    "~/Library/Logs/Blocker",
    "~/Library/Preferences/com.leomathurin.blocker.plist",
    "~/Library/Saved Application State/com.leomathurin.blocker.savedState",
  ]
end
