cask "vezer" do
  version "1.9.6_776v2"
  sha256 "8466a6def2f2b752bbd225b2279f22347105fe5783fc73659876229f482b3505"

  url "https://imimot.com/versions/download.php?product=vezer&format=dmg"
  name "Vezer"
  desc "Timeline based MIDI/OSC/DMX sequencer for audiovisual artists"
  homepage "https://imimot.com/vezer/"

  depends_on macos: ">= :sierra"

  app "Vezér"

  zap trash: [
    "~/Library/Application Support/Vezér",
    "~/Library/Application Support/com.lov.Veze-r",
    "~/Library/Caches/com.lov.Veze-r",
    "~/Library/HTTPStorage/com.lov.Veze-r",
    "~/Library/Logs/Vezér",
    "~/Library/Preferences/com.lov.Veze-r.plist",
  ]
end
