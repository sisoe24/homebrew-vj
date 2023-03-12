cask "vdmx" do
  version "b8.8.0.5"
  sha256 "9508e32b2c69a8eb48438f0307b4db1dfb41ca1ff6234386bbb1c85a4a8498c3"

  url "https://vidvox.net/download/vdmx_demo"
  name "VDMX5"
  desc "Professional VJ Software"
  homepage "https://vidvox.net"

  depends_on macos: ">= :high_sierra"

  pkg "VDMX5 Installer.pkg"
  pkg "Extras/v002 QC Software.pkg"

  app "Extras/OSCQuery Browser.app", target: "/Applications/VDMX Extras/OSCQuery Browser.app"
  app "Extras/OSCQuery Helper.app", target: "/Applications/VDMX Extras/OSCQuery Helper.app"
  app "Extras/MIDI OSCQuery Helper.app", target: "/Applications/VDMX Extras/MIDI OSCQuery Helper.app"
  app "Extras/AVF Batch Converter.app", target: "/Applications/VDMX Extras/AVF Batch Converter.app"

  uninstall pkgutil: [
    "com.vidvox.pkg.VDMX5Installer",
    "com.Vidvox.pkg.VidvoxISFresources",
    "com.v002.pkg.VDMXQCFX",
    "com.v002.pkg.QCPlugins"
  ]

  zap trash: [
    "/Library/Application Support/VDMX",
    "~/Library/Application Support/VDMX",
    "~/Library/Logs/VDMX5",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vidvox.vdmx5.sfl2",
    "~/Library/Caches/QCCompositionRepository-com.vidvox.VDMX5.cache",
    "~/Library/Preferences/com.vidvox.VDMX5.plist",
    "/Applications/VDMX Extras"
  ]
end

