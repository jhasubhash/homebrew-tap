cask "oneprompt" do
  version "0.1.0-alpha.4"
  sha256 "d8634efd688532a1d48078e27d17a649a43b020df59b61722836ce9cafea340d"

  url "https://github.com/jhasubhash/oneprompt/releases/download/v#{version}/oneprompt-#{version}.dmg"
  name "oneprompt"
  desc "GPU terminal drawn like an ink painting on hand-made paper"
  homepage "https://github.com/jhasubhash/oneprompt"

  # Releases are alphas for now (GitHub pre-releases), which the default
  # strategy skips.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-[\w.]+)?)$/i)
    strategy :github_releases do |json, regex|
      json.map { |release| release["tag_name"]&.[](regex, 1) }
    end
  end

  depends_on :macos

  app "oneprompt.app"
  binary "#{appdir}/oneprompt.app/Contents/MacOS/oneprompt"

  zap trash: "~/.config/oneprompt"
end
