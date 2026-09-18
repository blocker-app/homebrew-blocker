cask "blocker" do
  version "1.2.0"
  sha256 "9d1f867210c0ac067c017623197139dc72f5bab77a2a1cb2efc10547a0c2208e"

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
