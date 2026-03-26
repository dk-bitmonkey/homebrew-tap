class Rugittu < Formula
  desc "Terminal UI Git client"
  homepage "https://github.com/dk-bitmonkey/rugittu"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.2/rugittu-macos-amd64.tar.gz"
      sha256 "878b45d4279b6b85c7aea2d1eb96d12f4edc572e5e3692947df499968d67ee71"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.2/rugittu-macos-arm64.tar.gz"
      sha256 "da00e8c51f6f6ed3a0d71bda1ec363953845635a4cdcf7a16d43af16099e38c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.2/rugittu-linux-amd64.tar.gz"
      sha256 "e855d3c9b5d87f41ade38410e8f611ab7b483c395e246f6235719c796d5281f2"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.2/rugittu-linux-arm64.tar.gz"
      sha256 "bc63047c8ab718bb1af1f4dd32169da0a754d305745676cae27e59ce0e397cbf"
    end
  end

  depends_on "git"

  def install
    bin.install "rugittu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rugittu --version")
  end
end
