class Rugittu < Formula
  desc "Terminal UI Git client"
  homepage "https://github.com/dk-bitmonkey/rugittu"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.7.0/rugittu-macos-amd64.tar.gz"
      sha256 "b8bed02a9283f5356cd5aacae498f98b7595527460aa96fe7070afaa6bff500c"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.7.0/rugittu-macos-arm64.tar.gz"
      sha256 "e2e34cb1e1b057a72808df8eac6dc35fe51dbc1d0dfe56e8b76fdb0c18330fd0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.7.0/rugittu-linux-amd64.tar.gz"
      sha256 "af34b138f6c37256925129bc049c6fe8e22b85f364540deda7213a4837a9d946"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.7.0/rugittu-linux-arm64.tar.gz"
      sha256 "0636ee09b079e0984e11c579d5a181275dd4de54507462b389cda937d808ffdd"
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
