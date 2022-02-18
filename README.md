# Rabbitmq
## 1、创建网络
``` SHELL
docker network create rabbitmq
```

## 2、启动
```SHELL
docker-compose up -d
```

## 3、节点2加入集群
```SHELL
docker-compose exec rabbitmq-node2 rabbitmqctl stop_app
docker-compose exec rabbitmq-node2 rabbitmqctl reset
docker-compose exec rabbitmq-node2 rabbitmqctl join_cluster rabbitmq@rabbitmq-node1
docker-compose exec rabbitmq-node2 rabbitmqctl start_app
```

## 4、测试
http://localhost:15672