cask "maggie" do
  version "0.31.0"
  sha256 "b3ee354564aea04288adb320d29bb38e371a4fa9518966b2353c194d1d38a3a9"

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
