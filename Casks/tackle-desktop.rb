cask "tackle-desktop" do
  version "0.2.5"
  sha256 "51afd3ecf8c7f3eff59b8affd0d9689dcb0d77ea3c61261fa0e5fca462c877dc"

  url "https://github.com/user-cube/releases/releases/download/tackle-v#{version}/Tackle_Desktop_#{version}_darwin_universal.zip"
  name "Tackle Desktop"
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"

  depends_on macos: :big_sur
  app "Tackle Desktop.app"
end
