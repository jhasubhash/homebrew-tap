cask "onecast-universal" do
  version "0.3.0"
  sha256 "f9604b5dfadb5f7a6936b911357d66449a1717497cae93b8491e2f2269ee2d36"

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
