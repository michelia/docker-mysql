# docker-alpine-postgres

### 构建
`docker build -t mysqldev .`
### 使用
`docker run --name mysql -e MYSQL_ROOT_PASSWORD=root -v e:/sqldata:/data -d -p 3306:3306 mysqldev`

上面的命令映射到主机的`3306`端口, 用户名和密码都是`root`

### 参考
- https://github.com/docker-library/docs/tree/master/mysql
