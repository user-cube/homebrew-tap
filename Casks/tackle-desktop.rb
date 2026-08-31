cask "tackle-desktop" do
  version "0.2.4"
  sha256 "8d80ff6195359d706bbfbb64f32c388bf4b5ed48ccc1ac09feb71d96c1043b81"

  url "https://github.com/user-cube/releases/releases/download/tackle-v#{version}/Tackle_Desktop_#{version}_darwin_universal.zip"
  name "Tackle Desktop"
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"

  depends_on macos: :big_sur
  app "Tackle Desktop.app"
end
