class Rugittu < Formula
  desc "Terminal UI Git client"
  homepage "https://github.com/dk-bitmonkey/rugittu"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.7.2/rugittu-macos-amd64.tar.gz"
      sha256 "5c79e43a5641fee636bd4e31dc9cd82b42fa7a0fc00a53d8870147efa778632d"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.7.2/rugittu-macos-arm64.tar.gz"
      sha256 "eb924615137da9c6462b7997d47723ef87144640836cf35ac98c9e6e83bfa440"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.7.2/rugittu-linux-amd64.tar.gz"
      sha256 "dba0b8bec018b41a17f9cbd7a33b4999dea10ac16a0da8e251ee3502268409ff"
    end
    on_arm do
      url "https://github.com/dk-bitmonkey/homebrew-tap/releases/download/rugittu-v0.7.2/rugittu-linux-arm64.tar.gz"
      sha256 "adc9fa8bd96001ccca274128847d5e7715236c36a3b45f748106b1532d0d8dd8"
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
