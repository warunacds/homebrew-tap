class Agentdesk < Formula
  desc "All your agents, skills, and rules in one place"
  homepage "https://agentdesk.sh"
  version "0.6.3-beta"
  license "Proprietary"

  on_linux do
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-linux-amd64.tar.gz"
    sha256 "bd50595f3698aa647a4ab3a49ee1a3cc2afd8748b7cf6db4701a4f4de2af90e1"
  end

  def install
    bin.install "Forge" => "agentdesk"
  end

  test do
    assert_predicate bin/"agentdesk", :exist?
  end
end
