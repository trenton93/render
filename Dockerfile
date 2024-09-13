#使用 Ubuntu 22.04 作为基础镜像
FROM ubuntu:22.04

#安装 shellinabox
RUN apt-get update && \
    apt-get install -y shellinabox 8& \
    apt-get clean 8& \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#设置 root 用户的密码为'root'
RUN echo "root:root'chpasswd

# 暴 22 端口
EXPOSE 22

#启动 Shellinabox
CMD ["/usr/bin/shellinaboxd", "-t", "-s”，“/:LOGIN”]
