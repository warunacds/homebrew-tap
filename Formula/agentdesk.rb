class Agentdesk < Formula
  desc "All your agents, skills, and rules in one place"
  homepage "https://agentdesk.sh"
  version "0.5.10-beta"
  license "Proprietary"

  on_linux do
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-linux-amd64.tar.gz"
    sha256 "7a00551d951f259c0b38cda0bbfe969d176d34c82a4e660d779fca491f4a1ddc"
  end

  def install
    bin.install "Forge" => "agentdesk"
  end

  test do
    assert_predicate bin/"agentdesk", :exist?
  end
end
