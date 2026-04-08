class Gtop < Formula
  desc "A terminal system monitor with first-class GPU support"
  homepage "https://github.com/dk-bitmonkey/gtop"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.3/gtop-macos-amd64.tar.gz"
      sha256 "6cf4de3f2776b4ae8a0e0d83708f31cdf56d576e347324463518e605b915404d"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.3/gtop-macos-arm64.tar.gz"
      sha256 "11aaeccc9dd1ac061dca5be3f1637fe0ce8837d6e733a6396fd7081f4a0624d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.3/gtop-linux-amd64.tar.gz"
      sha256 "2754471c2c2b153fb78aa3eccd71fee66ecb775d7223c87900d5730f80566faf"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.3/gtop-linux-arm64.tar.gz"
      sha256 "89df71b3ad03c2a5d2761e7fa47ad76fd5d160f08728fe246bf113d86debe687"
    end
  end

  def install
    bin.install "gtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtop --version")
  end
end
