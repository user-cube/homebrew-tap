class Tackle < Formula
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"
  url "https://github.com/user-cube/tackle/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "6d5165ab6301fc2bf42ab4180df9aeceaa502d4fceddbc9ce39866f0d309fc0b"
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
