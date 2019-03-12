mkdir -p /mnt/rabbitmq/node1
mkdir -p /mnt/rabbitmq/node2
chmod 777 /mnt/rabbitmq/node1
chmod 777 /mnt/rabbitmq/node2

docker stack deploy --compose-file docker-compose.yml rabbitmq