class Gtop < Formula
  desc "A terminal system monitor with first-class GPU support"
  homepage "https://github.com/dk-bitmonkey/gtop"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.1/gtop-macos-amd64.tar.gz"
      sha256 "a9c375e0cd95d0e159faca7feb8439bef9833ae6f59b89c92ab51f3f9f29953a"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.1/gtop-macos-arm64.tar.gz"
      sha256 "9eaf4e50c6a84e833b58a8ec6c65c8400443ecd5aae702662c27757cc10c1899"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.1/gtop-linux-amd64.tar.gz"
      sha256 "74a61cec6796dff5b79ff9c2e56e45c2eb28d583515d1f5958d976f35ce6cb5e"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.1/gtop-linux-arm64.tar.gz"
      sha256 "75d670fed5e3d7bf0b67387961d83ae5fb9242ddff8f9dd3da1f4436efe5e28b"
    end
  end

  def install
    bin.install "gtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtop --version")
  end
end
