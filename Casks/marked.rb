cask 'marked' do
  version '2.5.41988'
  sha256 '88502c7517b17efcf690b5145b9f496590b4cd8ee56906743a52f1cce8f1e486'

  url "https://updates.marked2app.com/Marked#{version}.zip"
  appcast 'https://updates.marked2app.com/marked.xml'
  name 'Marked'
  homepage 'https://marked2app.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app "Marked #{version.major}.app"

  uninstall quit: "com.brettterpstra.marked#{version.major}"

  zap trash: [
               "~/Library/Application Support/Marked #{version.major}",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brettterpstra.marked#{version.major}.sfl*",
               "~/Library/Caches/Marked #{version.major}",
               "~/Library/Caches/com.brettterpstra.marked#{version.major}",
               "~/Library/Logs/Marked #{version.major}",
               "~/Library/Preferences/com.brettterpstra.marked#{version.major}.plist",
               "~/Library/Saved Application State/com.brettterpstra.marked#{version.major}.savedState",
             ]
end
