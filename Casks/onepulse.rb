cask "onepulse" do
  version "0.2.0"
  sha256 "ce70a856153ed594ba3e35111283e7b6e14df8cb61881baef7435e740d205ff2"

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
