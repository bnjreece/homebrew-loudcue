cask "loudcue" do
  version "0.1.6"
  sha256 "91603e627ec39716a6c993f4e1d614cf54ac023696021613780857171fc6e0b4"

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
