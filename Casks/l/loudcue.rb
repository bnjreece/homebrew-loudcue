cask "loudcue" do
  version "0.1.7"
  sha256 "cdfb0ccba8d1a8ef158c3dcfc7f71ef8fa818907fd382f02b3e9e6012436c7ed"

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
