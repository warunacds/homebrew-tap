cask "agentdesk" do
  version "0.6.3-beta"

  if Hardware::CPU.arm?
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-arm64.dmg"
    sha256 "1212efb233778a8a4ff1c2f855bbfd4a29d5c7c65000159a77f3f238117e7807"
  else
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-intel.dmg"
    sha256 "23a311a2da305d52639aa4be35b3a5026bf23630779d7731b4fc6af3c1caed80"
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
