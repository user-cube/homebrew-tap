class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  url "https://github.com/user-cube/tackle/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "063648f58a25a1c81620a9d56d9e0772faff06c458b44d13102b85c640990748"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X github.com/user-cube/tackle/internal/version.Version=#{version}
      -X github.com/user-cube/tackle/internal/version.Commit=homebrew
      -X github.com/user-cube/tackle/internal/version.Date=homebrew
    ]
    system "go", "build", *std_go_args(ldflags:), "./cmd/tackle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tackle version")
  end
end
