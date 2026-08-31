cask "tackle-desktop" do
  version "0.2.2"
  sha256 "2ded168ee297d5ce4e14d9c0e81a93ebd8075f259b5ea8a19b3c0039af69c5d4"

  url "https://github.com/user-cube/tackle/releases/download/v#{version}/Tackle_Desktop_#{version}_darwin_universal.zip"
  name "Tackle Desktop"
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"

  depends_on macos: ">= :big_sur"
  app "Tackle Desktop.app"
end
