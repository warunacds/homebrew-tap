cask "agentdesk" do
  version "0.5.10-beta"

  if Hardware::CPU.arm?
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-arm64.dmg"
    sha256 "c054207d486a5b8a77ea2890d8bc1ec00f721dbcbc9909340ba472edc8b8e89d"
  else
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-intel.dmg"
    sha256 "bac85a2da880b17b789db79b0fa83ccb547254fac7a2eff0114f4d4d23692f04"
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
