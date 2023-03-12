cask "lumen" do
    version "1.1.2"
    sha256 :no_check

    url "https://lumen-app.com/download/"
    name "Lumen"
    desc "Analog-Style Software Video Synthesizer"
    homepage "https://lumen-app.com"

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