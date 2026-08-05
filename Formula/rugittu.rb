class Rugittu < Formula
  desc "Terminal UI Git client"
  homepage "https://github.com/dk-bitmonkey/rugittu"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.7/rugittu-macos-amd64.tar.gz"
      sha256 "a999419b07b34c4c12bcd5084b6679564b986ec15efeb18d9fa752e398fb654e"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.7/rugittu-macos-arm64.tar.gz"
      sha256 "9a57efd6df1553b1cc928f3d563112c328ae34cf40497d1efbe4dfc0d2df0ee4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.7/rugittu-linux-amd64.tar.gz"
      sha256 "56147ea67ce763c2556a8b060f7a85203ef484d6f28a864f32b76b9a32b7bd60"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.7/rugittu-linux-arm64.tar.gz"
      sha256 "e32b7103ad7f4910861ee4f8b8f984c63026291a41f2968c8bfd52911f448e00"
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
