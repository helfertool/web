+++
draft = false
title = "GPG key renewed"
date = "2022-07-22T19:00:00+02:00"
tags = []

+++

In case you use the `helfertoolctl` Debian repository, you might notice the following error:

    The following signatures were invalid: EXPKEYSIG FA1023F9F6AC494F Sven Hertle <hertle@fs.tum.de>

The key was already renewed some time ago, but you need to update it on your system:

    sudo apt-key adv --recv-keys FA1023F9F6AC494F

<!--more-->
