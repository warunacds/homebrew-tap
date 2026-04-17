cask "agentdesk" do
  version "0.5.8-beta"

  url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-universal.dmg"
  sha256 "384305557a6b27c3420c52d2e583ccd491c8f49208fcfc8482144efc2db78b17"

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
