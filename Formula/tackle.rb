class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.2.5/tackle_0.2.5_darwin_arm64.tar.gz"
      sha256 "7e8a2c2eef18d5ae20146d9987cb3a2a8995ee7bebabec2cc93ce5af14dff9bc"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.2.5/tackle_0.2.5_darwin_amd64.tar.gz"
      sha256 "c0a5fe6479d8884aa8d9a8dc361ac5d65dbae06dacd072c918477cae89b8ab8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.2.5/tackle_0.2.5_linux_arm64.tar.gz"
      sha256 "33228142cc432af7ba404d621d59265369f6a112af03763d3cf11df7ca402df6"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.2.5/tackle_0.2.5_linux_amd64.tar.gz"
      sha256 "d2028c8621cfcd4ac73906bd5da57f9803de450de439ff5342a6e783ef332438"
    end
  end

  def install
    bin.install "tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
