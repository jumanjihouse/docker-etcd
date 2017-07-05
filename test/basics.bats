@test "image exists" {
  run docker images jumanjiman/etcd
  [[ ${status} -eq 0 ]]
}

@test "etcd is running" {
  run docker-compose ps etcd
  [[ ${status} -eq 0 ]]
}

@test "etcd is ready to serve client requests" {
  run docker-compose logs etcd
  [[ ${output} =~ "ready to serve client requests" ]]
}
