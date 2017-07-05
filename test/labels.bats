@test "ci-build-url label is present" {
  if [[ -z ${CIRCLE_BUILD_URL} ]]; then
    skip "This test only runs on circleci"
  fi
  run docker inspect \
      -f '{{ index .Config.Labels "io.github.jumanjiman.ci-build-url" }}' \
      jumanjiman/etcd
  [[ ${output} =~ circleci.com ]]
}
