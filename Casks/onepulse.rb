cask "onepulse" do
  version "0.4.8"
  sha256 "870940b0a390e71deae37bad369966d4d66a3a824388ac4c4cc41df753c099f4"

  url "https://github.com/jhasubhash/onepulse-releases/releases/download/v#{version}/OnePulse-#{version}.dmg"
  name "OnePulse"
  desc "Private Apple Health dashboard with lab results, readiness and an MCP server"
  homepage "https://github.com/jhasubhash/onepulse-releases"

  livecheck do
    url "https://raw.githubusercontent.com/jhasubhash/onepulse-releases/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "OnePulse.app"

  zap trash: [
    "~/Library/Application Support/OnePulse",
    "~/Library/Caches/in.onesyntax.onepulse",
    "~/Library/HTTPStorages/in.onesyntax.onepulse",
    "~/Library/Preferences/in.onesyntax.onepulse.plist",
  ]
end
