class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.5.0/tackle_0.5.0_darwin_arm64.tar.gz"
      sha256 "16e5655f628efcd67bef39c4434c8bc0290058d959f8fa808e3ee82122d8960e"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.5.0/tackle_0.5.0_darwin_amd64.tar.gz"
      sha256 "eec89c36ffd9c7786101032af3744e8a695463e4f965e8f5ea311206441c23d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.5.0/tackle_0.5.0_linux_arm64.tar.gz"
      sha256 "bf323c0996ce20dedebfee2348c69bdcc1d0b23764554e775f45b335b250b01c"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.5.0/tackle_0.5.0_linux_amd64.tar.gz"
      sha256 "59e9c566b2131e00564ff0de59b26499260c71912783b1d78921f2afc6e915d6"
    end
  end

  def install
    bin.install "tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
