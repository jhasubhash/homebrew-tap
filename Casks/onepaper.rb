cask "onepaper" do
  version "0.1.9"
  sha256 "7a16920900398d7a11fa64e456d8612b677ceb501af13b92c531e1e36c6b8443"

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
