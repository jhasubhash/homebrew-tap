cask "onepulse" do
  version "0.3.5"
  sha256 "03db49480444a8c86bf386aded22e6fc94a4d1baab5efd84667576d6de45bd32"

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
