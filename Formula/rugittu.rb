class Rugittu < Formula
  desc "Terminal UI Git client"
  homepage "https://github.com/dk-bitmonkey/rugittu"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.4/rugittu-macos-amd64.tar.gz"
      sha256 "5c7f2352b3a3ebe5c0f060bd3a59b832f11955adca49583df47974efb9b51cc3"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.4/rugittu-macos-arm64.tar.gz"
      sha256 "7441c64741eb5a48a832ff0f1eee7b7715bbfcfb5e323c873c33c68f99bb848a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.4/rugittu-linux-amd64.tar.gz"
      sha256 "c0bb59a4555795153bf15c70d19ed3bd848b25759c236fd3036233f665e81350"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.4/rugittu-linux-arm64.tar.gz"
      sha256 "61ad6dd8673bb4bad17525524bfa930f2e64f288965c8f7a2e613b9eaee61b3a"
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
