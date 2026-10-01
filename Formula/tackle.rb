class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.10.1/tackle_0.10.1_darwin_arm64.tar.gz"
      sha256 "e7f171d36f5ee93690ec0b32f19a7bca9063ba944eccf441af95b2c4dd45d04a"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.10.1/tackle_0.10.1_darwin_amd64.tar.gz"
      sha256 "154e678fb7124e00284ee9942dbc4fb1555cf1985f5eab4768f3ea2730df1006"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.10.1/tackle_0.10.1_linux_arm64.tar.gz"
      sha256 "7b676be6a8296e4c2b93809ce7e6d376d40cfd7a3f7311ce87190338bd9287b9"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.10.1/tackle_0.10.1_linux_amd64.tar.gz"
      sha256 "8ec795927d0ff58c2364c5931a8b93fd1fe782fa34ac2abc6f41ea5fe305cefb"
    end
  end

  def install
    bin.install "tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
