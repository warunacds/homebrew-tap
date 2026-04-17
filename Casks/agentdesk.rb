cask "agentdesk" do
  version "0.6.3-beta"

  url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-universal.dmg"
  sha256 "e615eca5d3c3b2451b7a4ce3423080f717d66a42917f9588c2a22fb273c2ea4e"

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
