class Gtop < Formula
  desc "A terminal system monitor with first-class GPU support"
  homepage "https://github.com/dk-bitmonkey/gtop"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.2.0/gtop-macos-amd64.tar.gz"
      sha256 "0849ce8649258c880b55cf6e0c4034655ad2484b058a5072214f3c15b032cc5e"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.2.0/gtop-macos-arm64.tar.gz"
      sha256 "b5bbede0da899cdc8264aedd98965517e97f488a3a0bdf0c4bd82f2252d6d691"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.2.0/gtop-linux-amd64.tar.gz"
      sha256 "45af784b981499917bfab2a34518ea08fb23eebad7e3ed4cd31d26486a1cba50"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.2.0/gtop-linux-arm64.tar.gz"
      sha256 "359c8e806fa9e29712c1cb04bdcf0f4960f75491ae553eb05bf64c9a618ca18e"
    end
  end

  def install
    bin.install "gtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtop --version")
  end
end
