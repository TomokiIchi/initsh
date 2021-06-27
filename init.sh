#----------------------------------------------------------
# Base Settings
#----------------------------------------------------------
# スタンバイまでの時間を24時間へ変更 (デフォルト1時間)
$ sudo pmset -a standbydelay 86400
# ブート時のサウンドの無効化 (寂しい気もしますが煩いので消しています)
sudo nvram SystemAudioVolume=" "
# スクロールバーの常時表示
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
# コンソールアプリケーションの画面サイズ変更を高速にする
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
# スリープさせない
sudo systemsetup -setcomputersleep Off > /dev/null
# クラッシュレポートの無効化
defaults write com.apple.CrashReporter DialogType -string "none"
# アプリケーション起動時のアニメーションを無効化
defaults write com.apple.dock launchanim -bool false
# すべての（デフォルトの）アプリアイコンをDockから消去する
defaults write com.apple.dock persistent-apps -array
# アニメーションを無効化する
defaults write com.apple.finder DisableAllAnimations -bool true
# デフォルトで隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles -bool true
# 全ての拡張子のファイルを表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true
# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true
# 名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# 拡張子変更時の警告を無効化
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# USBやネットワークストレージに.DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
# ディスク検証を無効化
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true
# ゴミ箱を空にする前の警告の無効化
defaults write com.apple.finder WarnOnEmptyTrash -bool false

#----------------------------------------------------------
# Dev
#----------------------------------------------------------
#XcodeとHomebrewのインストール
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# anyenvのインストール
brew install anyenv
anyenv init
anyenv install rbenv
anyenv install pyenv
anyenv install nodenv
# tmuxのインストール
brew install tmux
# gitのインストール
brew install git
brew install gh
# fish shellの導入
brew install fish
curl -L https://get.oh-my.fish | fish
# その他ツール
brew install ghp
brew install peco
brew install z
brew install go
brew install yarn
ghq get zenorocha/dracula-theme
fisher install oh-my-fish/theme-bobthefish

#----------------------------------------------------------
# Apps
#----------------------------------------------------------
# ChromeとGoogleIMEのインストール
brew cask install google-chrome
brew cask install google-japanese-ime
# Vscodeのインストール
brew cask visual-studio-code
# iTermのインストール
brew cask install iTerm2
ghq get zenorocha/dracula-theme
# alfredのインストール
brew install --cask alfred
# Notionのインストール
brew install --cask notion
# Slackのインストール
brew install --cask slack
# Sparkのインストール
brew install --cask spark
# discordのインストール
brew install --cask discord
# 1passwordのインストール
brew install --cask 1password
# Android Studioのインストール
brew install --cask android-studio
# zoomのインストール
brew install --cask zoom
# 英かなのインストール
brew install --cask cmd-eikana

# Font「Cica」のインストール
ghq get https://github.com/miiton/Cica.git