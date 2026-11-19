cask "theca" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.0"
  sha256 arm:   "71310af139e67853a5c011d01a7516db45df20c28ec4e69c83b2b0b7ab681902",
         intel: "0b739d4b28a41b8c6e447760f3b87f4cf469c00bed263c8f88c481f3dab35ab8"

  url "https://github.com/theca-cloud/computer/releases/download/#{version}/theca-#{version}-macos-#{arch}.dmg"
  name "Theca"
  desc "Folders kept identical to Theca libraries, or libraries as drives"
  homepage "https://theca.rs/computer"

  # The app updates itself.
  auto_updates true
  depends_on macos: ">= :ventura"

  app "Theca.app"
  # `theca` on the PATH: the app's own, a Mac has no other CLI.
  binary "#{appdir}/Theca.app/Contents/MacOS/theca"
end
