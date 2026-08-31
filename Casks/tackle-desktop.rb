cask "tackle-desktop" do
  version "0.2.3"
  sha256 "6f48c12c76de07d67e19a5aab51c251a8ec8f6567bd980d1eb8433dfdc5d6500"

  url "https://github.com/user-cube/tackle/releases/download/v#{version}/Tackle_Desktop_#{version}_darwin_universal.zip"
  name "Tackle Desktop"
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"

  depends_on macos: :big_sur
  app "Tackle Desktop.app"
end
