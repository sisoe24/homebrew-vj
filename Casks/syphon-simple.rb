cask "syphon-simple" do
  version "5.0.0"
  sha256 :no_check

  url "https://github.com/Syphon/Simple/releases/download/5/Syphon.Simple.Apps.zip"
  name "Syphon Simple"
  desc "Realtime live video sharing application"
  homepage "https://github.com/Syphon/Simple"

  app "Syphon Simple Apps/Simple Client.app"
  app "Syphon Simple Apps/Simple Server.app"

  zap trash: [
    "~/Library/Preferences/info.v002.syphon.Simple-Client.plist",
    "~/Library/Preferences/info.v002.syphon.Simple-Server.plist",
  ]
end
