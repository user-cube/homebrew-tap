class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.2.4/tackle_0.2.4_darwin_arm64.tar.gz"
      sha256 "c4f6191409e65d876588a8454c28cb2894af110dfa29b50cf2f4177d8d9ac8c7"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.2.4/tackle_0.2.4_darwin_amd64.tar.gz"
      sha256 "0c73a9e9dd18b1b47f2d38deb5fce6db68bd3a9f98dcc8dde1964c193b8344e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.2.4/tackle_0.2.4_linux_arm64.tar.gz"
      sha256 "f9b51480e42e07e2ab5bbf7ccda653d5c63b1a5245ca8f90a38507fe12c96d43"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.2.4/tackle_0.2.4_linux_amd64.tar.gz"
      sha256 "43711221b3419c5ca11c08dd9f999d3c38397e3b4bf26ce93435bdd3abc57fde"
    end
  end

  def install
    bin.install "tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
