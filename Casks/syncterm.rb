cask 'syncterm' do
  version '1.1'
  sha256 '24d7d0167a187336701fa1730fb4e04ed0d166204de73bb2d5cc2dd388a54308'

  # sourceforge.net/syncterm/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/syncterm/syncterm/syncterm-#{version}/syncterm-#{version}-osx.zip"
  appcast 'https://sourceforge.net/projects/syncterm/rss'
  name 'SyncTERM'
  homepage 'https://syncterm.bbsdev.net/'

  app 'SyncTERM.app'

  zap trash: [
               '~/Library/Preferences/SyncTERM',
               '~/Library/Preferences/syncterm.plist',
             ]
end
