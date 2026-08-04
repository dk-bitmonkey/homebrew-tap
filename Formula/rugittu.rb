class Rugittu < Formula
  desc "Terminal UI Git client"
  homepage "https://github.com/dk-bitmonkey/rugittu"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.6/rugittu-macos-amd64.tar.gz"
      sha256 "8a3e58e91a23d0f6c9aaf01ffc5b98a4ffd446d90c0aa20c0ee0f4dc96aab85e"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.6/rugittu-macos-arm64.tar.gz"
      sha256 "cf33696e647d7fc14fe2b264c4d077bc90df6e690eee1f79ecebeb456e55d1d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.6/rugittu-linux-amd64.tar.gz"
      sha256 "2a12205c784cc70efdbb4b8cdeff86ba725d0ae2d30211080d6d7c36768cbe27"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.6/rugittu-linux-arm64.tar.gz"
      sha256 "708dcedf93f8cc8d9569c35e3ab79fda9d50412db8b654033ee5c8bbcf21a55e"
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
