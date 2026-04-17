cask "agentdesk" do
  version "0.5.7-beta"

  url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-universal.dmg"
  sha256 "7ef6f01da227e82fb49b6368d111e1bfd43e2cc5f661dc18784a411a0fb8edc7"

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
