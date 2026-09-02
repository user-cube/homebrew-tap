cask "tackle-desktop" do
  version "0.3.0"
  sha256 "aa93f212eb3c578aa9ddf85a330f22e0892779ea320182f09cb8cecc107112fe"

  url "https://github.com/user-cube/releases/releases/download/tackle-v#{version}/Tackle_Desktop_#{version}_darwin_universal.zip"
  name "Tackle Desktop"
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"

  depends_on macos: :big_sur
  app "Tackle Desktop.app"
end
