class Rugittu < Formula
  desc "Terminal UI Git client"
  homepage "https://github.com/dk-bitmonkey/rugittu"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v#{version}/rugittu-macos-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v#{version}/rugittu-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v#{version}/rugittu-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v#{version}/rugittu-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
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
