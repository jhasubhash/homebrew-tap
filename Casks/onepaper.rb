cask "onepaper" do
  version "0.1.21"
  sha256 "8f467c8001620a80b33af51ad1d7441ac0b2e092433a80ec2df1fd994c2185df"

  url "https://github.com/jhasubhash/onepaper-releases/releases/download/v#{version}/OnePaper-#{version}.dmg"
  name "OnePaper"
  desc "Block-based notes for engineers, with code, math and whiteboards"
  homepage "https://onesyntax.in/onepaper"

  livecheck do
    url "https://raw.githubusercontent.com/jhasubhash/onepaper-releases/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "OnePaper.app"

  zap trash: [
    "~/Library/Application Scripts/in.onesyntax.onepaper",
    "~/Library/Containers/in.onesyntax.onepaper",
  ]
end
