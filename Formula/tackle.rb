class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.8.0/tackle_0.8.0_darwin_arm64.tar.gz"
      sha256 "ebba8ef7f3f202a3c43e554f03ab9e2bb5322d4bb2f22fd35bc73e8710e119c1"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.8.0/tackle_0.8.0_darwin_amd64.tar.gz"
      sha256 "ee8e58715d173b664e8fa6ec0fd26dd9f176bb7faa07c8316729e620cc133e23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.8.0/tackle_0.8.0_linux_arm64.tar.gz"
      sha256 "ad940563966d4fb717a59d0cdaaa0ea2162c532e11c768597304ee9faaa25240"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.8.0/tackle_0.8.0_linux_amd64.tar.gz"
      sha256 "f1fd20b6949aed7d8e9456df59a2c46cbdbeee64e0c6d9c8b8d0d9d231e84e1e"
    end
  end

  def install
    bin.install "tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
