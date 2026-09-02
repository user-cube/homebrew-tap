class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.3.0/tackle_0.3.0_darwin_arm64.tar.gz"
      sha256 "b5f3377eed9ebb4c3c1c6ff6bb217e4492be5e1f22b6ed9d64df5d4b050947a3"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.3.0/tackle_0.3.0_darwin_amd64.tar.gz"
      sha256 "45247779013c9dab4469cc22faa22111c2f979b24585d5b1e217629c120299b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.3.0/tackle_0.3.0_linux_arm64.tar.gz"
      sha256 "dcf31ae30712080c1ff740a0ded5ba8abd782fc27a843cbfef8321e23d84cbb6"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.3.0/tackle_0.3.0_linux_amd64.tar.gz"
      sha256 "2827f98c3fc01b8a75c4ce0316f122a2d6d17c22a146ad20efd845b48493416e"
    end
  end

  def install
    bin.install "tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
