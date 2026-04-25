# first-php-sample
はじめてのPHPサンプル

0. 現状把握
   - OSの種類とバージョンを表示

     @unagidemowakaru ➜ /workspaces/first-php-sample (main) $  
     `＄ cat /etc/os-release` <span style="color: red;">↩︎</span>

     ```text
     PRETTY_NAME="Ubuntu 24.04.4 LTS"
     NAME="Ubuntu"
     VERSION_ID="24.04"
     VERSION="24.04.4 LTS (Noble Numbat)"
     VERSION_CODENAME=noble
     ID=ubuntu
     ID_LIKE=debian
     HOME_URL="[https://www.ubuntu.com/](https://www.ubuntu.com/)"
     SUPPORT_URL="[https://help.ubuntu.com/](https://help.ubuntu.com/)"
     BUG_REPORT_URL="[https://bugs.launchpad.net/ubuntu/](https://bugs.launchpad.net/ubuntu/)"
     PRIVACY_POLICY_URL="[https://www.ubuntu.com/legal/terms-and-policies/privacy-policy](https://www.ubuntu.com/legal/terms-and-policies/privacy-policy)"
     UBUNTU_CODENAME=noble
     LOGO=ubuntu-logo
     ```


1. コンテナベースをOracle Linuxへ変更
   - 作成するディレクトリとファイル
     ```text
     ・devcontainer
        +-- Dockerfile・・・・・・・Oracleの記述
        +-- devcontainer.json・・・初期処理追記
     ```
   - リビルド
      1. 左下の「Codespaces: super winner」をクリック
      2. プルダウンメニューから「Rebuild Container」を選択
      3. ダイアログの「Full Rebuild」ボタンをクリック
   - 確認コマンド

     `＄ cat /etc/oracle-release` <span style="color: red;">↩︎</span>
     ```text
     Oracle Linux Server release 9.7
     ```


2. Apache HTTP Serverをインストール
   - 変更するファイル
     ```text
      ・devcontainer
         +-- Dockerfile・・・・・・・・インストールを追記
         +-- devcontainer.json・・・・ポートフォワードと外部スクリプトファイルを追記
         +-- postStartCommand.sh・・・httpdの起動
     ```
     `＄ sudo chmod 755 .devcontainer/postStartCommand.sh` <span style="color: red;">↩︎</span>
   - リビルド
   - 動作確認
     1. ポートタブの転送されたアドレスの地球儀アイコンをクリック


3. PHPインストールとphpサンプルファイル作成と確認
   - Rebuild後に公開ディレクトリ作成  
        `＄ sudo mkdir sample01` <span style="color: red;">↩︎</span>  
        `＄ sudo ln -s sample01 /var/www/html/.` <span style="color: red;">↩︎</span>  
   - ファイルの作成と修正
      ```text
      ・devcontainer
         +-- Dockerfile・・・・・・・・インストールを追記
         +-- devcontainer.json・・・・ポートフォワードと外部スクリプトファイルを追記
         +-- postStartCommand.sh・・・httpdの起動
      ・sample01
         +-- index.php
     ```
   - サンプルのindex.php作成
      1. 「!Enterキー」を入力
   - htmlタグのlang属性の初期値を設定
      1. Ctrl + Shift P(⌘ + Shft + P)を同時に押す
      2. 「Preferences: Open User Settings」と入力しつつ選択
      3. 「emmet.variables」と入力しつつ選択
      4. 「項目の追加」ボタンをクリック
      5. 項目「lang」の値を「en」から「ja」へ変更(なければ追加)
      6. ダイアログを✖️で閉じる
   - サンプルの再作成
      1. Ctrl + A(⌘ + A)でindex.phpのすべての文字列を選択
      2. 「!Enterキー」
      3. titleタグで挟まれた「Document」をダブルクリックして「はじめてのプログラム」へ変更
      4. bodyタグに「<?php echo "Hello World!"; ?>」を入力
      5. Ctrl+S(⌘+S)で保存
　       または三本線のハンバーガーメニューのファイルメニューから保存)
   - サンプルの動作確認
      1. ターミナルで
　    「"$BROWSER" http://localhost/sample01/index.php」
　      コマンドを実行
      2. トップページが表示される場合は、URLの最後に
　       「/sample01/index.php」とEnterキーを入力
