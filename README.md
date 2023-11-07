
### 仓库地址
https://github.com/nicholyx/nacos-sync-docker

### 说明
该镜像是基于官方https://github.com/nacos-group/nacos-sync/releases/download/0.4.9-PRE/nacos-sync-0.4.9.zip 构建出来的

构建命令：``` docker build -t nicholyx/nacos-sync:0.4.9-pre . ```


### 使用方式
```docker-compose
version: '3.1'

services:
  nacos-sync:
    image: nicholyx/nacos-sync:0.4.9-pre
    ports:
      - '8083:8083'
    volumes:
      - ./config/:/nacos-sync/conf/
```

### 修改配置
配置文件在config目录下，可以自行修改

```properties
server.port=8083
server.servlet.context-path=/

spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL5Dialect
spring.jpa.hibernate.ddl-auto=update
spring.jpa.properties.hibernate.show_sql=false

spring.cloud.discovery.enabled=false


spring.datasource.url=jdbc:mysql://127.0.0.1:3306/nacos_sync?characterEncoding=utf8
spring.datasource.username=root
spring.datasource.password=root
management.endpoints.web.exposure.include=*
management.endpoint.health.show-details=always

```
