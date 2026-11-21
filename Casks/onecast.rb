cask "onecast" do
  version "0.3.0"
  sha256 "8f70fc8fc47a84b361a37f7d4b9c12a62d91aaf35cf8696459140bbaaf7d351e"

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
