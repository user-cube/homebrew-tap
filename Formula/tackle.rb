class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.9.0/tackle_0.9.0_darwin_arm64.tar.gz"
      sha256 "78205bd7d485a1bda6b879a0c5688fb695246071cf5852c039df3fe773bebb82"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.9.0/tackle_0.9.0_darwin_amd64.tar.gz"
      sha256 "a2ec706c4ba90443313f44336b3cdc6110e4970e03eaec8841b623765e720265"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.9.0/tackle_0.9.0_linux_arm64.tar.gz"
      sha256 "f9e722585250fb9833706001ede62af2a2795ba323dc31deffad60645d6cc19a"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.9.0/tackle_0.9.0_linux_amd64.tar.gz"
      sha256 "7d4f226a5e228a7b949bc86d1da9bda544a9e41bf51a71d26659ef9ee34ef547"
    end
  end

  def install
    bin.install "tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
