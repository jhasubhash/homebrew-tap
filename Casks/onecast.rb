cask "onecast" do
  version "0.2.0"
  sha256 "37ec95530f54e93fed3340036021f1411bbd372e3452aa19e0c81f0a56e34b54"

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
