cask "onepaper" do
  version "0.2.8"
  sha256 "1f2c0b61d7a8eb517e94849f9b67263c6c3c4138de66275a221576c8334f56a8"

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
