cask "blocker" do
  version "1.0.0"
  sha256 "243664ea87821a9e023712f7ee65b54190b4337027760c529dafb67b20de8048"

  url "https://github.com/leo-mathurin/blocker-releases/releases/download/v#{version}/blocker-#{version}.dmg",
      verified: "github.com/leo-mathurin/blocker-releases/"
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
