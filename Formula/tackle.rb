class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.11.0/tackle_0.11.0_darwin_arm64.tar.gz"
      sha256 "79556c0ca44ebad1fea5617ab9ab587353c2073cd415c7fab91ad81351b94aac"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.11.0/tackle_0.11.0_darwin_amd64.tar.gz"
      sha256 "b3c111392875ee2943a7c7e656b41704e76086b613ef39f3194eab90a3ccc6e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.11.0/tackle_0.11.0_linux_arm64.tar.gz"
      sha256 "2d10e18aceeac2372becc1a9eacc3b7f7de3936239011ed88b16e1d9927be7bd"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.11.0/tackle_0.11.0_linux_amd64.tar.gz"
      sha256 "f62a7c679fa314b7a81dce144870ffa4cc1ad6830db5182d113bdca8b960226a"
    end
  end

  def install
    bin.install "tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
