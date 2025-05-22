cask "dumbky" do
  version "0.1.3"
  sha256 :no_check

  url "https://github.com/ChristianWSmith/dumbky/releases/download/v#{version}/dumbky-darwin.zip"
  name "Dumbky"
  desc "The Dumb Duck API Tester"
  homepage "https://github.com/ChristianWSmith/dumbky"

  app "Dumbky.app"

  postflight do
    system_command "/usr/bin/xattr",
                     args: ["-d", "com.apple.quarantine", "/Applications/Dumbky.app"],
                     sudo: true
  end
end
