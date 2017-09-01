FROM mysql:5.7.19

# 修改镜像源为网易
ADD http://mirrors.163.com/.help/sources.list.jessie /etc/apt/sources.list

# 设置时区 Asia/Shanghai
ENV  TZ Asia/Shanghai
<<<<<<< HEAD
RUN apt-get update && apt-get install -y tzdata \
    && echo $TZ > /etc/timezone \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* /tmp/* /var/tmp/*
=======
RUN sed -i s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/ /etc/apk/repositories \
    && apk update \
    && apk add --no-cache tzdata \ 
    && echo $TZ > /etc/timezone \ 
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime 
    && apk del tzdata
>>>>>>> c803b95c6ad59ca2568b7016366be08e2aeccdf4
