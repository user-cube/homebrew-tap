class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.10.0/tackle_0.10.0_darwin_arm64.tar.gz"
      sha256 "d46b5cd998cfe99bcd46359fdd95afb7235f8d6a6e8aadc905d45dd655444239"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.10.0/tackle_0.10.0_darwin_amd64.tar.gz"
      sha256 "811d4057d5a3ab13949f4bd7ecbe68b8a3740c382f72b20f6c2363e97a67bd84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.10.0/tackle_0.10.0_linux_arm64.tar.gz"
      sha256 "c5e70d3f7ce7af880d546504222d859a6b4d25ea50e4659c001b80513b673e35"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.10.0/tackle_0.10.0_linux_amd64.tar.gz"
      sha256 "25a4a39bd926b9639414576dad4ba4adfcad8890d8d61824e549ef5d26384bbd"
    end
  end

  def install
    bin.install "tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
