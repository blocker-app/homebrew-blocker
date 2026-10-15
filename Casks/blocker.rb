cask "blocker" do
  version "1.4.2"
  sha256 "2add71480a25e72a0baea055521d1758681d037cd79a41f73591ce77710dbc55"

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
