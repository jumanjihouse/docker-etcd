@test "image exists" {
  run docker images jumanjiman/etcd
  [[ ${output} =~ etcd ]]
  [[ ${status} -eq 0 ]]
}

@test "tagged image exists" {
  run docker images jumanjiman/etcd:${TAG}
  [[ ${status} -eq 0 ]]
  [[ ${output} =~ ${TAG} ]]
}

@test "etcd is running" {
  run docker-compose ps etcd
  [[ ${status} -eq 0 ]]
}

@test "etcd is ready to serve client requests" {
  run docker-compose logs etcd
  [[ ${output} =~ "ready to serve client requests" ]]
}
