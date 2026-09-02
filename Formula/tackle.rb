class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.4.0/tackle_0.4.0_darwin_arm64.tar.gz"
      sha256 "1a00ac89246688b2a11e85f8c9decb7135694789e212203b891f30a3a324526a"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.4.0/tackle_0.4.0_darwin_amd64.tar.gz"
      sha256 "7ca58c4103a344e6123fde029bbe5f9fd5777c8937615f958a6e06c415a0f4e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.4.0/tackle_0.4.0_linux_arm64.tar.gz"
      sha256 "f51addfeb2d339b9dc576a8fdf5d8cf136684735b707732daa1f589b0b0d70ca"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.4.0/tackle_0.4.0_linux_amd64.tar.gz"
      sha256 "6f50d1e01339bd3ffb5ad8d85dcec0ed58a7f92354a037dc1551192b5f9ec9f3"
    end
  end

  def install
    bin.install "tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
