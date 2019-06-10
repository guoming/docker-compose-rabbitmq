#集群管理
## 启动服务
sh start.sh

## 节点2加入集群
docker exec -it rabbitmq-node2 bash
rabbitmqctl stop_app
rabbitmqctl reset
rabbitmqctl join_cluster rabbitmq@rabbitmq-node1
rabbitmqctl start_app
exit