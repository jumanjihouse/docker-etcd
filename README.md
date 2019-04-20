Overview
========

etcd server based on Alpine Linux

Source:   https://github.com/jumanjihouse/docker-etcd<br/>
Image:    https://registry.hub.docker.com/u/jumanjiman/etcd/<br/>
Upstream: https://github.com/coreos/etcd/<br/>
Package:  https://pkgs.alpinelinux.org/packages?name=etcd<br/>

[![Download size](https://images.microbadger.com/badges/image/jumanjiman/etcd.svg)](http://microbadger.com/images/jumanjiman/etcd)&nbsp;
[![Version](https://images.microbadger.com/badges/version/jumanjiman/etcd.svg)](http://microbadger.com/images/jumanjiman/etcd)&nbsp;
[![Source code](https://images.microbadger.com/badges/commit/jumanjiman/etcd.svg)](http://microbadger.com/images/jumanjiman/etcd)&nbsp;
[![Docker Registry](https://img.shields.io/docker/pulls/jumanjiman/etcd.svg)](https://registry.hub.docker.com/u/jumanjiman/etcd/)&nbsp;
[![CircleCI](https://circleci.com/gh/jumanjihouse/docker-etcd.svg?style=svg)](https://circleci.com/gh/jumanjihouse/docker-etcd)

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

The test harness requires:

* Python and the `pip` command
* [BATS](https://github.com/bats-core/bats-core)

Output from `ci/test` resembles:

    [yamllint] yamllint..........................................................................Passed
    [check-added-large-files] Check for added large files........................................Passed
    [check-case-conflict] Check for case conflicts...............................................Passed
    [check-executables-have-shebangs] Check that executables have shebangs.......................Passed
    [check-symlinks] Check for broken symlinks...............................(no files to check)Skipped
    [check-vcs-permalinks] Check vcs permalinks..................................................Passed
    [detect-private-key] Detect Private Key......................................................Passed
    [forbid-crlf] CRLF end-lines checker.........................................................Passed
    [forbid-tabs] No-tabs checker................................................................Passed
    [forbid-binary] Forbid binaries..........................................(no files to check)Skipped
    [git-check] Check for conflict markers and core.whitespace errors............................Passed
    [git-dirty] Check if the git tree is dirty...................................................Passed
    [shellcheck] Test shell scripts with shellcheck..............................................Passed
    [shfmt] Check shell style with shfmt.........................................................Passed

    ok image exists
    ok tagged image exists
    ok etcd is running
    ok etcd is ready to serve client requests
    - ci-build-url label is present (skipped: This test only runs on circleci)

    5 tests, 0 failures, 1 skipped


License
-------

See [`LICENSE`](LICENSE) in this repo.
