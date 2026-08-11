class Gtop < Formula
  desc "A terminal system monitor with first-class GPU support"
  homepage "https://github.com/dk-bitmonkey/gtop"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.2.2/gtop-macos-amd64.tar.gz"
      sha256 "3f5a887e37a4c7230093e7320f67539c675eb43654d566ce568a30087f6b73ee"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.2.2/gtop-macos-arm64.tar.gz"
      sha256 "ba08f43087c875141da9f4a2ba8847bc4628c5754e149c4df27a54d75a01f0d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.2.2/gtop-linux-amd64.tar.gz"
      sha256 "0ab1e87a43570b87b49b8a6280c8801e400f59e0346ebe8c82b420f0feb58d3c"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.2.2/gtop-linux-arm64.tar.gz"
      sha256 "9c37930d41368be31793c6643bc8a67e95e85450cce653fc3277f629f3ddeac2"
    end
  end

  def install
    bin.install "gtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtop --version")
  end
end
