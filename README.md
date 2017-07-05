## Overview

etcd server based on Alpine Linux

Source:   https://github.com/jumanjihouse/docker-etcd<br/>
Image:    https://registry.hub.docker.com/u/jumanjiman/etcd/<br/>
Upstream: https://github.com/coreos/etcd/<br/>
Package:  https://pkgs.alpinelinux.org/packages?name=etcd<br/>

Docker tags:

* optimistic: `latest`
* pessimistic: `${etcd_version}_${build_date}_git_${hash}`

Example:

    jumanjiman/etcd:3.2.1-r0_20170702T1659_git_6fead99
                    ^^^^^^^^ ^^^^^^^^^^^^^     ^^^^^^^
                       |         |              |
                       |         |              +--> hash from this git repo
                       |         |
                       |         +-----------------> build date and time
                       |
                       +---------------------------> version of etcd


Usage
-----

My current intent is to use this image to test other repos, such as
https://github.com/jumanjihouse/docker-puppet/


Build and test
--------------

We use circleci to build, test, and publish the images to Docker hub.
We use [BATS](https://github.com/sstephenson/bats) to run the test harness.
Output from BATS resembles:

    ✓ image exists
    ✓ tagged image exists
    ✓ etcd is running
    ✓ etcd is ready to serve client requests
    - ci-build-url label is present (skipped: This test only runs on circleci)

    5 tests, 0 failures, 1 skipped


License
-------

See [`LICENSE`](LICENSE) in this repo.
