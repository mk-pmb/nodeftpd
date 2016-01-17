#!/bin/sed -rf
# -*- coding: UTF-8, tab-width: 2 -*-

1{
  s~^(\xEF\xBB\xBF|\uFEFF)~~
}

s~\b(ftpd[/@\-]0\.2\.)[0-9]+\b~\1${patch}~g
s~("0\.2\.)[0-9]+(" is a plain semver version for ftpd)~\1${patch}\2~
s~ at [0-9:]+ [AP]M\b~ at ${time}~g
s~^(npm verb (request id|headers [^:]+:|addRemoteTarball|\
  ))\s.*$~\1 ${…}~
s~(tgz not)(in flight)~\1 \2~g
s~(\\AppData\\Local\\Temp\\npm-)[0-9a-z_-]+~\1${tmpdir}~
