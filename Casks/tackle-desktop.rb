cask "tackle-desktop" do
  version "0.9.0"
  sha256 "33902812744a48fc79974e5a5508af9c44fa52918f90cbef9a9880182d2a9799"

  url "https://github.com/user-cube/releases/releases/download/tackle-v#{version}/Tackle_Desktop_#{version}_darwin_universal.zip"
  name "Tackle Desktop"
  desc "Developer tools for everyday work"
  homepage "https://github.com/user-cube/tackle"

  depends_on macos: :big_sur
  app "Tackle Desktop.app"

  # Homebrew marks anything it downloads as quarantined, and macOS refuses to
  # register a quarantined app as a login item: SMAppService reports NotFound
  # and Launch at Login cannot be switched on at all. Homebrew removed the
  # --no-quarantine flag in version 6, so the cask has to clear the attribute
  # itself. The app is Developer ID signed and notarized, so this drops a
  # download marker rather than a signature check.
  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "com.apple.quarantine", "#{appdir}/Tackle Desktop.app"],
                   must_succeed: false
  end
end
