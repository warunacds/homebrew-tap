cask "agentdesk" do
  version "0.5.7-beta"

  if Hardware::CPU.arm?
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-arm64.dmg"
    sha256 "ac701ba3463ec95cb5d47748c787e11990d194f8c17566f2853e077444f13cee"
  else
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-intel.dmg"
    sha256 "c0080e8625dee61d59a93ab2f4f2cf1d5165eda8831604c71e2616da5144ac96"
  end

  name "Agent Desk"
  desc "All your agents, skills, and rules in one place"
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
