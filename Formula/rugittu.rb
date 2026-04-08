class Rugittu < Formula
  desc "Terminal UI Git client"
  homepage "https://github.com/dk-bitmonkey/rugittu"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.5/rugittu-macos-amd64.tar.gz"
      sha256 "95f21bca7f719cdc5cb53e56c96de0ff133b51bb2191a55857cb27b8f964ab8d"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.5/rugittu-macos-arm64.tar.gz"
      sha256 "03cb97562fb5f0d52a300ef3c9a81e530ed08f6571179e7a8d0b736a72ed3b6d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.5/rugittu-linux-amd64.tar.gz"
      sha256 "df0681695de2a484bbae93e46a35e093f9f7ef87651fc6ddd2675fb1510174cd"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.5/rugittu-linux-arm64.tar.gz"
      sha256 "8e50100817a46887da25bdc9130d351beea78ed88d2b09b76d25c8ee086ae1e9"
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
