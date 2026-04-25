# Oracle Linux 9 をベースに指定
FROM oraclelinux:9

# インストール（分割して実行することで負荷を抑える）
RUN dnf -y install git git-lfs sudo tar wget && \
    dnf clean all

# ユーザーの作成と sudo 権限の付与
ARG USERNAME=codespace
RUN useradd -m ${USERNAME} \
    && echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/${USERNAME} \
    && chmod 0440 /etc/sudoers.d/${USERNAME}

USER ${USERNAME}
WORKDIR /workspaces/php-1st-samples