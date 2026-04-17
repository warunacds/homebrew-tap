class Agentdesk < Formula
  desc "All your agents, skills, and rules in one place"
  homepage "https://agentdesk.sh"
  version "0.5.9-beta"
  license "Proprietary"

  on_linux do
    url "https://releases.agentdesk.sh/v#{version}/AgentDesk-linux-amd64.tar.gz"
    sha256 "fcde15aa766c68b0e363bbc76f65ce12276157a49735d29263d149a757571c66"
  end

  def install
    bin.install "Forge" => "agentdesk"
  end

  test do
    assert_predicate bin/"agentdesk", :exist?
  end
end
