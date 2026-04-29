cask "agentdesk" do
  version "0.7.0-beta"

  on_arm do
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-arm64.dmg"
    sha256 "dcd35b909c81eae4c466595278534bfe1dd5c0d697a2363cab3676748b168a35"
  end

  on_intel do
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-macOS-intel.dmg"
    sha256 "3423823f4c3a3f44731739992e49e8896f0c8f5e981845194b40ce35dcc89a90"
  end

  name "Agent Desk"
  desc "AI agent skill file manager"
  homepage "https://agentdesk.sh"

  app "AgentDesk.app"

  zap trash: [
    "~/.agentdesk",
    "~/.forge",
  ]
end
