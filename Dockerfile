FROM mysql:5.7.19

# 修改镜像源为网易
ADD http://mirrors.163.com/.help/sources.list.jessie /etc/apt/sources.list

# 设置时区 Asia/Shanghai
ENV  TZ Asia/Shanghai
RUN apt-get update && apt-get install -y tzdata \
    && echo $TZ > /etc/timezone \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* /tmp/* /var/tmp/*
