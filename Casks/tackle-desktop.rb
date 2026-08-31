cask "tackle-desktop" do
  version "0.2.6"
  sha256 "e1249d79d7b5ea7388c1de6fa124e6a470c617ec34e6ab70337f18d98036d9ff"

  url "https://github.com/user-cube/releases/releases/download/tackle-v#{version}/Tackle_Desktop_#{version}_darwin_universal.zip"
  name "Tackle Desktop"
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"

  depends_on macos: :big_sur
  app "Tackle Desktop.app"
end
