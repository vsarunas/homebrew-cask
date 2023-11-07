cask "tutanota" do
  version "3.118.25"
  sha256 :no_check

  url "https://mail.tutanota.com/desktop/tutanota-desktop-mac.dmg"
  name "Tutanota Desktop"
  desc "Email client"
  homepage "https://tutanota.com/"

  livecheck do
    url "https://mail.tutanota.com/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  auto_updates true

  app "Tuta Mail Desktop.app"

  zap trash: [
    "~/Library/Application Support/tutanota-desktop",
    "~/Library/Caches/de.tutao.tutanota",
    "~/Library/Caches/de.tutao.tutanota.ShipIt",
    "~/Library/Preferences/de.tutao.tutanota.plist",
  ]
end
