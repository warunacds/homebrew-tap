class Forge < Formula
  desc "AI agent skill file manager for Mac, Windows, and Linux"
  homepage "https://github.com/warunacds/Forge"
  version "0.1.0-beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/warunacds/Forge/releases/download/v#{version}/Forge-macOS-arm64.dmg"
      sha256 "0be47ee38658942f6339f05480367d880a674b71419449c37597173f06d33ca8"
    else
      url "https://github.com/warunacds/Forge/releases/download/v#{version}/Forge-macOS-intel.dmg"
      sha256 "c9d065b1322e62118dc4c87eaf58bfd76db2ef9e460d42abb2d7bf6f66e49ee3"
    end
  end

  on_linux do
    url "https://github.com/warunacds/Forge/releases/download/v#{version}/Forge-linux-amd64.tar.gz"
    sha256 "44a64c1a852552898ebb63d46a2731529851339475ab0e7a0ec98b18a60e0657"
  end

  def install
    if OS.mac?
      prefix.install "Forge.app"
    else
      bin.install "Forge" => "forge"
    end
  end

  def caveats
    if OS.mac?
      <<~EOS
        Forge.app has been installed to:
          #{prefix}/Forge.app

        To launch, run:
          open #{prefix}/Forge.app

        Or add to Applications:
          ln -sf #{prefix}/Forge.app /Applications/Forge.app

        On first launch, macOS may block the app. Right-click → Open to bypass Gatekeeper.
      EOS
    end
  end

  test do
    if OS.linux?
      assert_predicate bin/"forge", :exist?
    end
  end
end
