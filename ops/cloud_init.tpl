#cloud-config
ssh_deletekeys: True
# disable ability to login via pw
ssh_pwauth: False

users:
  - name: ian
    groups: sudo
    sudo: ALL=(ALL) NOPASSWD:ALL
    shell: /bin/bash
    ssh_authorized_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDSmS66lEMaikAQqssseG8RnUmUvLHnthAvFQM3MP9Bw+xRJzI9kNwrkIPO04l1xWHIKwIbV9SZD6+B3U2KDw0VCKcGrAPRPZfP16uXcWU3eSL6QCThbw5GPvodHTbi4kFfghu7e85J3IdC54YYQMSyAvdIIQEmZKCVU+tIFnLBGvMLdLh1FiZ4icTA9bfosgX+WT4TijS1vgdOqAarGAaIyNoinURPJASY2JXKaWkzgRPdZYzP/Os0m2kmKnx+64zCnHUEic8gcqEURJgTt2k97rsq0lV7ms74qiEwO/x0M6W6Q7jhUx85kO2lKOtdZmUXilEs/skxXcSmQBGEWD9u+dTt4hOXVclJ1J9hgbz6c2SFOYLpnrIMFceREcrvqUlkkaPY+z9XTMc38CrpT3zUa6ObphVL/8t5OydWhN9M6/1/2eBrs+fN/pEP1aa93Y55XOBn7OFNlrGj0/ZYhqN6xFilbW1FmTSMWl/jftfWfPclG+npihHdjo33rxet2O5riF3+f+D3Oc2d2nh0TXv3PMl88om7h46pdlPnpbsChQrxDTMnZwWLTNjzwb8HR1JtVQFP8D9g9Zp8J0CuZC0poz01iJLNNWT9juXgiv5+21GQJMMM/gAD/tF7iGi409EHAftyfQkHNnDtB399jFvhg0uKSErdkfq0pi3nV2cnhw==

apt:
  sources:
    yarn:
      source: deb https://dl.yarnpkg.com/debian/ stable main
      keyid: 1646B01B86E50310

    nodesource:
      source: deb https://deb.nodesource.com/node_10.x $RELEASE main
      # from: https://deb.nodesource.com/gpgkey/nodesource.gpg.key
      key: |
        -----BEGIN PGP PUBLIC KEY BLOCK-----
        Version: GnuPG v1
        Comment: GPGTools - https://gpgtools.org

        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
        =CLGF
        -----END PGP PUBLIC KEY BLOCK-----


    erlang_solutions:
      source: deb http://binaries.erlang-solutions.com/debian $RELEASE contrib
      # from https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc
      key: |
        -----BEGIN PGP PUBLIC KEY BLOCK-----
        Version: GnuPG v1.4.10 (GNU/Linux)

        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
        ctmKvzuuerI6mVQjg/80PJ4fEV0=
        =VAR1
        -----END PGP PUBLIC KEY BLOCK-----

packages:
  - build-essential
  - ["esl-erlang", "1:21.3.8.11-1"]
  - ["elixir", "1.9.4-1"]
  - nodejs
  - yarn

package_upgrade: true

runcmd:
  - [
      git,
      clone,
      "https://github.com/Ian-GL/quesadilla",
      "/home/ian/quesadilla",
    ]
