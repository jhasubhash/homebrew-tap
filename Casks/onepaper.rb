cask "onepaper" do
  version "0.2.1"
  sha256 "863e0facae8964a4c7e22a829ebe2952b62789d37fd3428183b9a0a295d50331"

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
