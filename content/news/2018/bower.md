+++
draft = false
title = "Bower not used anymore"
date = "2018-02-11T18:08:00+01:00"
tags = ["update", ]

+++

The Helfertool repository now (again) contains all JS and CSS dependencies.
This means that npm and bower are no dependency anymore, this should make
deployment easier and save around 50MB of disk space.

This means that the `node_modules` and `helfertool/components` directories
can be removed.
It is recommended to run `python manage.py collectstatic --clear` to
remove the old files from the static files directory that is served by
the web server.

<!--more-->
