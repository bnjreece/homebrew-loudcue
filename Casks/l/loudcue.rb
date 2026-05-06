cask "loudcue" do
  version "0.1.2"
  sha256 "f24380853c9882c6986e1bf368dd8627930ceb422f006d829b5a702dbf375751"

  url "https://github.com/bnjreece/loudcue/releases/download/v#{version}/LoudCue-#{version}.dmg",
      verified: "github.com/bnjreece/loudcue/"
  name "LoudCue"
  desc "Full-screen calendar alerts for meetings"
  homepage "https://loudcue.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "LoudCue.app"

  zap trash: [
    "~/Library/Application Support/com.loudcue.LoudCue",
    "~/Library/Caches/com.loudcue.LoudCue",
    "~/Library/Preferences/com.loudcue.LoudCue.plist",
    "~/Library/Saved Application State/com.loudcue.LoudCue.savedState",
  ]
end
