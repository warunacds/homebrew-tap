cask "agentdesk" do
  version "0.5.9-beta"

  if Hardware::CPU.arm?
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-arm64.dmg"
    sha256 "0e760f761ce19e916e4a531c6655c5356d3bab517ff62a72d4d95fac5f808ed2"
  else
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-intel.dmg"
    sha256 "fefccd5f8a5e9925866920a5d142a9aaafb3b23d09c1e110a5c0746f91161f3e"
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
