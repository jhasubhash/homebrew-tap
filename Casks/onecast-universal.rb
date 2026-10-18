cask "onecast-universal" do
  version "0.2.0"
  sha256 "9ef5013c1ce05c9982b9301962189bd81ec0232e3bad0998b5cb34b716692158"

  url "https://github.com/jhasubhash/onecast/releases/download/v#{version}/Onecast-Universal-#{version}.dmg"
  name "Onecast"
  desc "Menu-bar launcher that also runs Raycast extensions"
  homepage "https://github.com/jhasubhash/onecast"

  auto_updates true
  conflicts_with cask: "onecast"
  depends_on arch: :x86_64
  depends_on macos: :tahoe

  app "Onecast.app"

  zap trash: [
    "~/Library/Application Support/com.onecast.app",
    "~/Library/Caches/com.onecast.app",
    "~/Library/Preferences/com.onecast.app.plist",
  ]
end
