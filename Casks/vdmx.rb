cask "vdmx" do
  version "6_1.0.3"
  sha256 "e891ac93e463d3980c3bee96ceb35b9a8ccc5ed2d59e612ff42c5753da316e3f"

  url "https://d3mz9evhpv6ssy.cloudfront.net/download/VDMX6_1.0.3.dmg"
  name "VDMX6"
  desc "Professional VJ Software"
  homepage "https://vidvox.net/"

  depends_on macos: ">= :high_sierra"

  app "Extras/OSCQuery Browser.app", target: "/Applications/VDMX Extras/OSCQuery Browser.app"
  app "Extras/OSCQuery Helper.app", target: "/Applications/VDMX Extras/OSCQuery Helper.app"
  app "Extras/MIDI OSCQuery Helper.app", target: "/Applications/VDMX Extras/MIDI OSCQuery Helper.app"
  app "Extras/AVF Batch Converter.app", target: "/Applications/VDMX Extras/AVF Batch Converter.app"
  app "Extras/Vuo Extras", target: "/Applications/VDMX Extras/Vuo Extras"
  app "Extras/ISF Extras", target: "/Applications/VDMX Extras/ISF Extras"
  app "Extras/TouchDesigner Extras", target: "/Applications/VDMX Extras/TouchDesigner Extras"
  app "Extras/ISFEditor_installer_2.9.15.app", target: "/Applications/VDMX Extras/ISFEditor_installer_2.9.15.app"
  pkg "Extras/v002 QC Software.pkg"
  pkg "VDMX6 Installer.pkg"

  uninstall pkgutil: [
    "com.vidvox.pkg.VDMX6Installer",
    "com.Vidvox.pkg.VidvoxISFresources",
    "com.v002.pkg.VDMXQCFX",
    "com.v002.pkg.QCPlugins",
  ]

  zap trash: [
    "/Library/Application Support/VDMX",
    "~/Library/Application Support/VDMX",
    "~/Library/Logs/VDMX6",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vidvox.VDMX6.sfl2",
    "~/Library/Caches/QCCompositionRepository-com.vidvox.VDMX6.cache",
    "~/Library/Preferences/com.vidvox.VDMX6.plist",
    "/Applications/VDMX Extras",
  ]
end
