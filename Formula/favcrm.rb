class Favcrm < Formula
  desc "FavCRM CLI — talk to FavCRM from your terminal via the MCP API"
  homepage "https://favcrm.io"
  version "0.1.5"
  license "MIT"

  on_macos do
    # Apple Silicon only — Intel Macs are not supported.
    on_arm do
      url "https://github.com/favcrm/cli/releases/download/v0.1.5/favcrm-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "a05153a1890238e2bc69acdc3e018ca4aa0169cd5fec219b5ba9d359991345ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/favcrm/cli/releases/download/v0.1.5/favcrm-v0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ecf8cc72aceaa2af114109857184963cf25b4cfc5d0d3d3195c1056688156a7"
    end
    on_intel do
      url "https://github.com/favcrm/cli/releases/download/v0.1.5/favcrm-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4471e1edf2fc1b1e13abdb85ce1e43a47a07de259b6ff8ec8f9556e01686527a"
    end
  end

  def install
    bin.install "favcrm"
  end

  test do
    assert_match "favcrm", shell_output("#{bin}/favcrm --version")
  end
end
