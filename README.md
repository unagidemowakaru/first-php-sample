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


