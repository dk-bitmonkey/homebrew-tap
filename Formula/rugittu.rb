class Rugittu < Formula
  desc "Terminal UI Git client"
  homepage "https://github.com/dk-bitmonkey/rugittu"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.5/rugittu-macos-amd64.tar.gz"
      sha256 "462e51f617d7504141f089fa01c725cb0c2f9b812cace197c2cdfd54ec849e32"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.5/rugittu-macos-arm64.tar.gz"
      sha256 "226935b6b12ccb376db5a0587e5a1387378ea9f3fcac6e2bd8a01af9b23f7c2c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.5/rugittu-linux-amd64.tar.gz"
      sha256 "98ad65227b6d143aeeabc54e2dee683aaef6ff5cc45b4cafc6cab45f3fa95d82"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.5.5/rugittu-linux-arm64.tar.gz"
      sha256 "43a79f9bf3559adb76a1deb4119e209fe06eaddfce3a1d96f5dc215135a11b37"
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
