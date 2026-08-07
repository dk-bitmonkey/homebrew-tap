class Rugittu < Formula
  desc "Terminal UI Git client"
  homepage "https://github.com/dk-bitmonkey/rugittu"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.6.0/rugittu-macos-amd64.tar.gz"
      sha256 "a65a4b82fd6889a29472a3c29ec0f1671085701055dbd0a82d298c63b0fe5b7b"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.6.0/rugittu-macos-arm64.tar.gz"
      sha256 "a9fdc2d3440915f3eb6822cb4226c18c1622ba1c5c2b520e2e40dbbac581f635"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.6.0/rugittu-linux-amd64.tar.gz"
      sha256 "683106fc8c5ef6781f4ec73c3ba7111408d55e5104c4ace9d86ec2a4a33ccc6a"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.6.0/rugittu-linux-arm64.tar.gz"
      sha256 "fa0300d9bf4ee738d917a8b2339da7f30f05ecdc8d5dec0ca74a114950e7b118"
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
