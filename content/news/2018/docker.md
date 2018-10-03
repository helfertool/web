+++
draft = false
title = "Deployment with Docker"
date = "2018-10-03T18:40:00+02:00"
tags = ["update", ]

+++

Deploying a Django application is not always totally easy, especially with dependencies
like Celery and LaTeX.
Therefore, the new and recommended way to deploy the Helfertool is Docker together
with a Debian package called `helfertoolctl` that provides things like a systemd service
file.

Together with the Docker container, some more changes were done:

 * There is a YAML configuration file now.
 * The templates for the privacy statement and "About this software" page are stored in the database - no editing of HTML files anymore!
 * The source code in the Git repository was moved to the ``src`` directory. Unfortunately, this makes updates of old Helfertool installations more complicated but it was necessary.
* First steps toward a proper application logging were done: the Docker container already writes some events to a log file, syslog forwarding is also possible.

The [installation instructions](https://docs.helfertool.org/admin/installation.html) were updated
in order to describe the new setup.
It is recommended to migrate existing installations to Docker, the database of course stays the same.

Here are some hints how to move over to Docker:

 * Backup the database and media files.
 * Disable ``uwsgi`` service.
 * Follow the [installation instructions](https://docs.helfertool.org/admin/installation.html) and install ``helfertoolctl``. Reuse the already existing database.
 * Reconfigure your reverse proxy according to the instructions.
 * Copy the media files to ``/srv/helfertool/media``.

We hope that your migration works smoothly, otherwise please open Github issues for the [Helfertool](https://github.com/helfertool/helfertool/issues),
[helfertoolctl](https://github.com/helfertool/helfertoolctl/issues) or
the [documentation](https://github.com/helfertool/docs/issues).

<!--more-->
