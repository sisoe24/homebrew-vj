cask "vdmx" do
  version "6_1.0.3"
  sha256 "e891ac93e463d3980c3bee96ceb35b9a8ccc5ed2d59e612ff42c5753da316e3f"

  url "https://d3mz9evhpv6ssy.cloudfront.net/download/VDMX6_1.0.3.dmg"
  name "VDMX6"
  desc "Professional VJ Software"
  homepage "https://vidvox.net/"

  depends_on macos: ">= :high_sierra"

  pkg "VDMX6 Installer.pkg"
  pkg "Extras/v002 QC Software.pkg"

  postflight do
    extras_source = "#{staged_path}/Extras"
    extras_target = "/Applications/VDMX Extras"

    unless File.exist?(extras_target)
      system_command "/bin/cp",
                     args: ["-R", extras_source, extras_target],
                     sudo: true
    end
  end

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
