cask "onecast-universal" do
  version "0.1.0"
  sha256 "f89e50a0c08b989ab95b28ca77e78ee68214cdaca47dbab7f909d2f1b291c4f6"

  url "https://github.com/jhasubhash/onecast/releases/download/v#{version}/Onecast-Universal-#{version}.dmg"
  name "Onecast"
  desc "Menu-bar launcher that also runs Raycast extensions"
  homepage "https://github.com/jhasubhash/onecast"

  auto_updates true
  conflicts_with cask: "onecast"
  depends_on arch: :x86_64
  depends_on macos: ">= :tahoe"

  app "Onecast.app"

  zap trash: [
    "~/Library/Application Support/com.onecast.app",
    "~/Library/Caches/com.onecast.app",
    "~/Library/Preferences/com.onecast.app.plist",
  ]
end
