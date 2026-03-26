class Gtop < Formula
  desc "A terminal system monitor with first-class GPU support"
  homepage "https://github.com/dk-bitmonkey/gtop"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v#{version}/gtop-macos-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v#{version}/gtop-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v#{version}/gtop-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v#{version}/gtop-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "gtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtop --version")
  end
end
