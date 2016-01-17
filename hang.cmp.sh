#!/bin/bash
# -*- coding: utf-8, tab-width: 2 -*-
MAXLN="$(cat ok.txt hang.txt | wc -l)"
diff -sU "$MAXLN" <(sed -rf npm-log-clean.sed -- ok.txt
  ) <(sed -rf npm-log-clean.sed -- hang.txt
  ) | sed -re '1,2{s~(/fd/).*$~\1…~}' | tee hang.diff
