+++
draft = false
title = "Renamed git master branch to main"
date = "2021-01-17T17:00:00+01:00"
tags = []

+++

We renamed the `master` branch of all git repositories to `main`.

These commands update the branch name in your local git repository:

    git branch -m master main
    git fetch origin
    git branch -u origin/main main

<!--more-->
