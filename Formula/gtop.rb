class Gtop < Formula
  desc "A terminal system monitor with first-class GPU support"
  homepage "https://github.com/dk-bitmonkey/gtop"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.3.0/gtop-macos-amd64.tar.gz"
      sha256 "f334ea92e934214b6e952e47abf434261b4afb2961452d0bd19059c8d47037e9"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.3.0/gtop-macos-arm64.tar.gz"
      sha256 "202ed8a8bb1905cc956a84de5e0721f1f9091f2d7b5e592adf8df5e3dec1342c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.3.0/gtop-linux-amd64.tar.gz"
      sha256 "86e246f47e886d2a589ce101575860f5007e2a8f92c5c1234773f15fdc3602be"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.3.0/gtop-linux-arm64.tar.gz"
      sha256 "f58df98fc0111b1b15502e0b9d19546fd86f3b805cec95d2b9afe8d5b9d73b38"
    end
  end

  def install
    bin.install "gtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtop --version")
  end
end
