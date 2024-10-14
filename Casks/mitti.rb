cask "mitti" do
  version "2.8.4_1266"
  sha256 "58d85db426bc6042c9c0426a05533c18578521ed1da3f095da91b60bb3713965"

  url "https://imimot.com/versions/download.php?product=mitti2&format=dmg"
  name "Mitti"
  desc "Video Playback Software for live events and exhibitions"
  homepage "https://imimot.com/mitti/"

  depends_on macos: ">= :mojave"

  app "Mitti.app"

  zap trash: [
    "~/Library/Application Support/Mitti",
    "~/Library/HTTPStorage/com.imimot.Mitti.2",
    "~/Library/Logs/Mitti",
    "~/Library/Preferences/com.imimot.Mitti.2.plist",
  ]
end
