cask "onecast" do
  version "0.3.1"
  sha256 "d11dcc9ffcf486c4ae98b355fe706af090a4da9255762e6299d00d5a6ef2fd2d"

  url "https://github.com/jhasubhash/onecast/releases/download/v#{version}/Onecast-#{version}.dmg"
  name "Onecast"
  desc "Menu-bar launcher that also runs Raycast extensions"
  homepage "https://github.com/jhasubhash/onecast"

  auto_updates true
  conflicts_with cask: "onecast-universal"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Onecast.app"

  zap trash: [
    "~/Library/Application Support/com.onecast.app",
    "~/Library/Caches/com.onecast.app",
    "~/Library/Preferences/com.onecast.app.plist",
  ]
end
