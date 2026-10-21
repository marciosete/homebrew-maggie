cask "maggie" do
  version "0.25.0"
  sha256 "809d2f68b22922a1125a9eece62bb3f594bd3d401f86e99f45fff52cfa61edfd"

  url "https://github.com/marciosete/maggie/releases/download/v#{version}/Maggie.dmg"
  name "Maggie"
  desc "Agent Development Environment for Mac: Claude Code and Codex sessions in parallel"
  homepage "https://getmaggie.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Maggie updates itself with Sparkle; brew upgrade is not needed for new versions.
  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Maggie.app"

  zap trash: [
    "~/Library/Application Support/com.marciosete.maggie",
    "~/Library/Caches/com.marciosete.maggie",
    "~/Library/HTTPStorages/com.marciosete.maggie",
    "~/Library/Preferences/com.marciosete.maggie.plist",
    "~/Library/Saved Application State/com.marciosete.maggie.savedState",
  ]
end
