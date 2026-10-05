cask "blocker" do
  version "1.4.0"
  sha256 "1a2e09800ac25861edfa3bb2b5bafb068d3baf098bb3ca971042ff374acf5d04"

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
