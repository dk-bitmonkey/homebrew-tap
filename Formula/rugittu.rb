class Rugittu < Formula
  desc "Terminal UI Git client"
  homepage "https://github.com/dk-bitmonkey/rugittu"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.3/rugittu-macos-amd64.tar.gz"
      sha256 "52f25ed935c1c3ca34a02e6bb010ad65026c77965fcbc9e85e822e081bff1e5c"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.3/rugittu-macos-arm64.tar.gz"
      sha256 "d08321b61ae8f778b5e9e238684ab71865295b3628864dcdaabb5ec1313c9199"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.3/rugittu-linux-amd64.tar.gz"
      sha256 "c84d8b6312d0cf117ae14c82cff7506b6d56f543227bed0a755906e82f8e74a2"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.3/rugittu-linux-arm64.tar.gz"
      sha256 "4145ebea100116030701d2a156268dcb6b1b4e185fe2a9ab83ce03a9d84d9354"
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
