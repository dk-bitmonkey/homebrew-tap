class Rugittu < Formula
  desc "Terminal UI Git client"
  homepage "https://github.com/dk-bitmonkey/rugittu"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.7.1/rugittu-macos-amd64.tar.gz"
      sha256 "b45598a5bca83c378c0ea83e80dd0c7ab4cf0dfd20cc7da9e5072714fa316ec6"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.7.1/rugittu-macos-arm64.tar.gz"
      sha256 "84dbf080ec48873a0f3c0aef03c5960597fb75de8534bbf511c335214336fde2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.7.1/rugittu-linux-amd64.tar.gz"
      sha256 "5bd243faebf2428aef82850cc4c23503f2bd8fabfa7edc361ebafdf2a82660a8"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.7.1/rugittu-linux-arm64.tar.gz"
      sha256 "eaed0c5283ef4820ccf67c8ccb9bdf5173aaf94026d7fe6ac0e636034093802f"
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
