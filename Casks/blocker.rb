cask "blocker" do
  version "1.6.0"
  sha256 "754329a49660af3b8c83d8aac1f5e5b0e2a0acaa20ad4dbe755c1991735167e4"

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
