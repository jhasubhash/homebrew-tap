cask "onepaper" do
  version "0.1.11"
  sha256 "45f7776c4d88d53b436a00ad36be994e2206643bab7bad12849114b15e522df1"

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
