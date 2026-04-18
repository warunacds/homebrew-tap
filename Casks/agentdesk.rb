cask "agentdesk" do
  version "0.6.5-beta"

  url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-universal.dmg"
  sha256 "25d6a46b36a1aaf09b7f715d1111a4a503f35045dc14224623f73fe0093c450a"

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
