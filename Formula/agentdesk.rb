class Agentdesk < Formula
  desc "All your agents, skills, and rules in one place"
  homepage "https://agentdesk.sh"
  version "0.6.0-beta"
  license "Proprietary"

  on_linux do
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-linux-amd64.tar.gz"
    sha256 "f9fff543a70a92d07c962f33dcd337e34bc2a159e921e1970f332be53df57282"
  end

  def install
    bin.install "Forge" => "agentdesk"
  end

  test do
    assert_predicate bin/"agentdesk", :exist?
  end
end
