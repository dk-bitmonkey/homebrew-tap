class Gtop < Formula
  desc "A terminal system monitor with first-class GPU support"
  homepage "https://github.com/dk-bitmonkey/gtop"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.4/gtop-macos-amd64.tar.gz"
      sha256 "78f2033b60807560620f3ee7f026dac840312b20e70363b6b9ef557a4d45d211"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.4/gtop-macos-arm64.tar.gz"
      sha256 "859f360fb3ecb62bd85b50a730fa01d5e6aa9dd9276c14b57b3788b6248ee03e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.4/gtop-linux-amd64.tar.gz"
      sha256 "c25159ca9563d7948c421adf232b2bcb11e4ce08edb121f060482dbc971a6a47"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.4/gtop-linux-arm64.tar.gz"
      sha256 "e7d08a7af8e769445d3d6be9822c8e2044cef63b282a076d1ddad63c9a5391b0"
    end
  end

  def install
    bin.install "gtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtop --version")
  end
end
