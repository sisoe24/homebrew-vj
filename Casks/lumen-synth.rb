cask "lumen-synth" do
  version "1.1.2"
  sha256 "76b1e04d1dbfbdfc1c183219a2f175da698b56d7b5a4e1e32fa62ff92698848f"

  url "https://updates.paracosm.us/lumen/stable/download",
      verified: "paracosm.us/lumen"
  name "Lumen"
  desc "Analog-Style Software Video Synthesizer"
  homepage "https://lumen-app.com/"

  depends_on macos: ">= :mojave"

  app "Lumen.app"

  zap trash: [
    "/Users/Shared/Lumen",
    "~/Library/Application Support/Lumen",
    "~/Library/Application Support/com.Paracosm.Lumen",
    "~/Library/Cache/com.Paracosm.Lumen",
    "~/Library/HTTPStorage/com.Paracosm.Lumen",
    "~/Library/Preferences/com.Paracosm.Lumen.plist",
  ]
end
