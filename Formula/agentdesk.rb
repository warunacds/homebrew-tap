class Agentdesk < Formula
  desc "All your agents, skills, and rules in one place"
  homepage "https://agentdesk.sh"
  version "0.5.7-beta"
  license "Proprietary"

  on_linux do
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-linux-amd64.tar.gz"
    sha256 "167da4d0d6dfeff6310563ddd8450a1003cb97ff5be107e7a015ccc97b8574a1"
  end

  def install
    bin.install "Forge" => "agentdesk"
  end

  test do
    assert_predicate bin/"agentdesk", :exist?
  end
end
