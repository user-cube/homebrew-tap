class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.12.0/tackle_0.12.0_darwin_arm64.tar.gz"
      sha256 "bd3a458a8235775b59f6fe1f876099da7185f9be78c0a7a4c0642aa34beb1f1c"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.12.0/tackle_0.12.0_darwin_amd64.tar.gz"
      sha256 "5d10f34f3a783d9ca06932f5b2e17ce007e1e40215228090a8ccc2d0fc0198a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.12.0/tackle_0.12.0_linux_arm64.tar.gz"
      sha256 "9252459f6c79f7d77164440b3effa04cb58abcb0c2be01a4305d373d53113857"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.12.0/tackle_0.12.0_linux_amd64.tar.gz"
      sha256 "8331b8409636cb63bba47ff3bf8ea4b13aebd4a84b3d4782b455c55921515dd5"
    end
  end

  def install
    bin.install "tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
