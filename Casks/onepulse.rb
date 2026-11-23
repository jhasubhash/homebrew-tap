cask "onepulse" do
  version "0.3.6"
  sha256 "2c52dc5d4252508ce6b2179726693b66880a11be0307ab2c4dc3ff5b9e10ce65"

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
