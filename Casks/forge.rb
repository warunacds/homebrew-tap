cask "forge" do
  version "0.1.0-beta"

  if Hardware::CPU.arm?
    url "https://github.com/warunacds/Forge/releases/download/v#{version}/Forge-macOS-arm64.dmg"
    sha256 "0be47ee38658942f6339f05480367d880a674b71419449c37597173f06d33ca8"
  else
    url "https://github.com/warunacds/Forge/releases/download/v#{version}/Forge-macOS-intel.dmg"
    sha256 "c9d065b1322e62118dc4c87eaf58bfd76db2ef9e460d42abb2d7bf6f66e49ee3"
  end

  name "Forge"
  desc "AI agent skill file manager"
  homepage "https://github.com/warunacds/Forge"

  app "Forge.app"

  zap trash: [
    "~/.forge",
  ]

  caveats <<~EOS
    On first launch, macOS may block the app.
    Right-click the app, then click Open to bypass Gatekeeper.
  EOS
end
