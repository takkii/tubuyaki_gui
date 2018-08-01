![ツイートボタン表示](https://github.com/takkii/tubuyaki_gui/blob/master/tweet_icon.gif)![zinbeiのアイコン](https://github.com/takkii/tubuyaki_gui/blob/master/zinbei.ico)

## Tubuyaki_GUI

*Githubで管理しているtubuyakiをもう少し改良したtubuyaki_guiです*

変更点

>log/backup.txtにつぶやきの履歴を保存するようにしたところです

>logフォルダとbackup.txtは自動で作成されます

>※ 管理者権限をlogを生成するとき必要なときがあります

かなり使いやすくなりました。

>***日本語で25文字〜35文字位が目安です***

>ToDo管理にお使いくださいませ。

詳細

### backup.txt

>encoding: sjis

<s>なぜなら、zinbei,zinbeijettのためです。</s>

*※ 作成したとき、Windows環境を想定していました。*

```sh
chmod 777 log

chmod 777 log/backup.txt
```

例：

>フォルダとファイルを先に作ってアクセス権を変更すれば、

>管理者権限はいらないはずです。