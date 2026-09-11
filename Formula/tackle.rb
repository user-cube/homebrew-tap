class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.6.0/tackle_0.6.0_darwin_arm64.tar.gz"
      sha256 "7054311f9dbd6109973716dd41fd962075c995d83c873f14167c9756876b1c19"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.6.0/tackle_0.6.0_darwin_amd64.tar.gz"
      sha256 "aa4e34344d87d62e4c359735e4504b68ffc2d5e34099ab32200f63a555314ea0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.6.0/tackle_0.6.0_linux_arm64.tar.gz"
      sha256 "d0d40310e8f728b8a2850d93fc6efbd1a8a1fe81503a468b00473388e02a6bae"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.6.0/tackle_0.6.0_linux_amd64.tar.gz"
      sha256 "6408875a158efc7caed5399ac1f86ac888b4a6ee0348bb7618ad0decbd5df1ed"
    end
  end

  def install
    bin.install "tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
