class Favcrm < Formula
  desc "FavCRM CLI — talk to FavCRM from your terminal via the MCP API"
  homepage "https://favcrm.io"
  version "0.1.4"
  license "MIT"

  on_macos do
    # Apple Silicon only — Intel Macs are not supported.
    on_arm do
      url "https://github.com/favcrm/cli/releases/download/v0.1.4/favcrm-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "77236f8d7cc5a69f19ea3ab02e7102b3a11c299b7728e1cee5f2e330488689a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/favcrm/cli/releases/download/v0.1.4/favcrm-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "babc9a0c1dadbe4bdf86f0e20baf63f7c4de87f5b836b76cf5a1e527c5fbee6a"
    end
    on_intel do
      url "https://github.com/favcrm/cli/releases/download/v0.1.4/favcrm-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4da6f1830f732eda9eef6a846a35429cac8167887c86fc21dce664253f18914"
    end
  end

  def install
    bin.install "favcrm"
  end

  test do
    assert_match "favcrm", shell_output("#{bin}/favcrm --version")
  end
end
