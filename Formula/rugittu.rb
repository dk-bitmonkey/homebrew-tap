class Rugittu < Formula
  desc "Terminal UI Git client"
  homepage "https://github.com/dk-bitmonkey/rugittu"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.6.0/rugittu-macos-amd64.tar.gz"
      sha256 "08c06a997779b6e7a952a9b2b572918fc838935a3c069f4ea83e69f5adbcf506"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.6.0/rugittu-macos-arm64.tar.gz"
      sha256 "1c3c81c8cef50066ae76ad8900f0bd7fd8dc2869833c680ea384a2bed37e45f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.6.0/rugittu-linux-amd64.tar.gz"
      sha256 "51ee16ad7f8453532b2ebe33da5aff3bd366d8c832dcb8c7a3a71cd2550d68de"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.6.0/rugittu-linux-arm64.tar.gz"
      sha256 "84cf78764b6d647a692a99bbced9d8a9e7652bc14ebc6530b1e9de4459ab466e"
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
