class Gtop < Formula
  desc "A terminal system monitor with first-class GPU support"
  homepage "https://github.com/dk-bitmonkey/gtop"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.0/gtop-macos-amd64.tar.gz"
      sha256 "69b80d9a314fcda5168c9e6ad9d1a1f66af4c02e099834954a3b98a0a12be1c4"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.0/gtop-macos-arm64.tar.gz"
      sha256 "e8f71c2f6d9205af6bd9954593538ec722d29e1d8cbda674fcf98a6a11b5f69e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.0/gtop-linux-amd64.tar.gz"
      sha256 "a7bba3ed6192d3f3cb15df4c100bfb1db009108ea7e97a592d1cde1c54f24b15"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.0/gtop-linux-arm64.tar.gz"
      sha256 "26cc3ee2f3b4142c99a8a1e0d623a16e592706911d9a57c20155e9902391659d"
    end
  end

  def install
    bin.install "gtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtop --version")
  end
end
