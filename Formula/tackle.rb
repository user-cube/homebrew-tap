class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.2.6/tackle_0.2.6_darwin_arm64.tar.gz"
      sha256 "510fa3901461079312f41143ed3a2fc9b8e70b0e6a0c691a3ffc462d0051ae2e"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.2.6/tackle_0.2.6_darwin_amd64.tar.gz"
      sha256 "65318aa64e81f86933c72a81665cf875b3fc5dc7e6259587a736b7af951c7c22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.2.6/tackle_0.2.6_linux_arm64.tar.gz"
      sha256 "b265afcd8f2a02d503e51b6092aa3f473c4c5fcab2aa2d6cb77d118462738f39"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.2.6/tackle_0.2.6_linux_amd64.tar.gz"
      sha256 "4cd4981ff5afeeade78329f47bff363a49d8668b9c07bdfff4ccaf411db93396"
    end
  end

  def install
    bin.install "tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
