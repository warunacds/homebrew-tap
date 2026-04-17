cask "agentdesk" do
  version "0.6.0-beta"

  url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-universal.dmg"
  sha256 "d1486e5aa914968702b3966e7c0fbcf2b5599467ba042e4486edc450885c39ad"

  name "Agent Desk"
  desc "AI agent skill file manager"
  homepage "https://agentdesk.sh"

  app "Agent Desk.app"

  zap trash: [
    "~/.forge",
  ]

  caveats <<~EOS
    On first launch, macOS may block the app.
    Right-click the app, then click Open to bypass Gatekeeper.
  EOS
end
