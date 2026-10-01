class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.7.0/tackle_0.7.0_darwin_arm64.tar.gz"
      sha256 "db51bf86266af62920847d41bf8f59d8c96305792dc5bb8e73f01f1b8474cb6e"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.7.0/tackle_0.7.0_darwin_amd64.tar.gz"
      sha256 "85323082f4dfa2e33948ba87d06ff28fb366c33dee128fede942f3111a33f0d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.7.0/tackle_0.7.0_linux_arm64.tar.gz"
      sha256 "8dd534cd94da6e5860b3a4bf88dab81da20ee0ae765bd36519f8f1f91cfea8d5"
    else
      url "https://github.com/user-cube/releases/releases/download/tackle-v0.7.0/tackle_0.7.0_linux_amd64.tar.gz"
      sha256 "7579546de51383851793e368969339880671dbe94fb052c517919b9c12bb8108"
    end
  end

  def install
    bin.install "tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
