cask "onecast-universal" do
  version "0.3.1"
  sha256 "31afe8da5677a46c5b0160425fc434abe9cf5254542cb6addcb0223ba9000c06"

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
