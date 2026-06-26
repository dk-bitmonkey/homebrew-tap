class Gtop < Formula
  desc "A terminal system monitor with first-class GPU support"
  homepage "https://github.com/dk-bitmonkey/gtop"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.2.1/gtop-macos-amd64.tar.gz"
      sha256 "3cfe8fd48c0bebdb9dbf065ebde63df97a7ea689b43f720615e6f91f993df1a8"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.2.1/gtop-macos-arm64.tar.gz"
      sha256 "ab274fbf0c5af7823687911aab3f898a6291c381f90eda71bfa70db73b71b38c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.2.1/gtop-linux-amd64.tar.gz"
      sha256 "b90a1ebe258e10edf8a1db2cb8a56758746ebe2b2feb6ce8cda94e17495d1907"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/gtop-v0.2.1/gtop-linux-arm64.tar.gz"
      sha256 "b4b96fa956014e3426161a8e71fed1d86ac5b9e1303131a8516ce05a90db09d6"
    end
  end

  def install
    bin.install "gtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtop --version")
  end
end
