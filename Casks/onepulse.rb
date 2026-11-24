cask "onepulse" do
  version "0.4.1"
  sha256 "72536037a11aeb046377f1f65e9e846b1fd1022dfb5d3ba1b9e68dd600cffc0a"

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
