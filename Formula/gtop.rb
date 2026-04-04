class Gtop < Formula
  desc "A terminal system monitor with first-class GPU support"
  homepage "https://github.com/dk-bitmonkey/gtop"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.2/gtop-macos-amd64.tar.gz"
      sha256 "2a3fcfad43a70fae2cba3f24d911484505477b0169ffa2bb1a67f601b029203e"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.2/gtop-macos-arm64.tar.gz"
      sha256 "96fde5aa50ac012006e745da43f3dcb5cd0503407d1a4905027ef4ca507d28b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.2/gtop-linux-amd64.tar.gz"
      sha256 "d227702e5788aa2b63a7a47feca8743658a718d2514f04f901e697eb3557bb13"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.1.2/gtop-linux-arm64.tar.gz"
      sha256 "d40a44af4607fc5e027c903a411d112f72d06e2e87aaf983c7e67576b77d763b"
    end
  end

  def install
    bin.install "gtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtop --version")
  end
end
