# Oracle Linux 9 をベースに指定
FROM oraclelinux:9

# PHP 8.3 の有効化
RUN dnf -y module reset php && \
    dnf -y module enable php:8.3

# インストール（分割して実行することで負荷を抑える）
RUN dnf -y install git git-lfs sudo tar wget && \
    dnf -y install httpd && \
    dnf -y install php php-gd php-gettext php-json php-mbstring php-xml && \
    dnf -y install mysql-server && \
    dnf -y install oracle-epel-release-el9 && \
    dnf -y install php-mysqlnd phpMyAdmin  && \
    dnf clean all

# ユーザーの作成と sudo 権限の付与
ARG USERNAME=codespace
RUN useradd -m ${USERNAME} && \
    echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/${USERNAME} \
    && chmod 0440 /etc/sudoers.d/${USERNAME}

# phpMyAdmin のアクセス許可設定
RUN sed -i 's/Require local/Require all granted/g' /etc/httpd/conf.d/phpMyAdmin.conf
# phpMyAdmin: 空パスワードログインを許可（開発用）
RUN sed -i "s/\$cfg\['Servers'\]\[\$i\]\['AllowNoPassword'\] = false;/\$cfg['Servers'][\$i]['AllowNoPassword'] = true;/" /etc/phpMyAdmin/config.inc.php

USER ${USERNAME}
WORKDIR /workspaces/php-1st-samples