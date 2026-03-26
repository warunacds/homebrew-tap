class Forge < Formula
  desc "AI agent skill file manager for Mac, Windows, and Linux"
  homepage "https://github.com/warunacds/Forge"
  version "0.1.0-beta"
  license "MIT"

  on_linux do
    url "https://github.com/warunacds/Forge/releases/download/v#{version}/Forge-linux-amd64.tar.gz"
    sha256 "44a64c1a852552898ebb63d46a2731529851339475ab0e7a0ec98b18a60e0657"
  end

  def install
    bin.install "Forge" => "forge"
  end

  test do
    assert_predicate bin/"forge", :exist?
  end
end
