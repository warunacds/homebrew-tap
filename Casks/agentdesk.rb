cask "agentdesk" do
  version "0.6.0-beta"

  if Hardware::CPU.arm?
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-arm64.dmg"
    sha256 "8970f9ef4ffa3cb99b4fa00611d989a6c715ab03a529305240725372c9151f26"
  else
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-intel.dmg"
    sha256 "ea4a235844c7e8ee4e916f12e9ef08112c975ea7323704997f47935c45715bde"
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
