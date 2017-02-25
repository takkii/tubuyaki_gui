# Tubuyaki_GUI

RubyGemsにあるtubuyakiとGithubで管理しているtubuyakiをもう少し改良したtubuyaki_guiです。

変更点

>log/backup.txtにつぶやきの履歴を保存するようにしたところです

>logフォルダとbackup.txtは自動で作成されます

かなり使いやすくなりました。

***日本語で25文字～35文字位を目安にして、***

ToDo管理に常時起動にしてお使いくださいませ。

動作

>ruby tubuyaki.rb

オフラインつぶやきツールが起動します

>ruby tubuyaki.rb -v

versionを表示します

>ruby tubuyaki.rb -h

オフラインつぶやきツールのヘルプを出力します

詳細

backup.txtは

>sjis指定

しました。

>zinbei,zinbeijettのためです。

## License
MITライセンスです

##Windowsユーザ

環境

>RubyInstallerでRubyをインストール

>PATHをつなぐのとdevkitをインストール

>Tcl/Tkをサポートにチェック


例

>tubuyaki.rbのショートカットを作成→

>PATHを含むruby PATHを含むtubuyaki.rb

>ico画像の設定

これで、タスクバーに表示するとワンクリックで起動できます。