# docker-owasp-dependency-check mirror

This project can be used to run a mirror of the https://nvd.nist.gov/ CVE reports in a docker container.

Simply run `make runCollector` to populate the local mirror.

And afterwards you can run `make runMirror` to run the local mirror at `http://127.0.0.1:8080`.

## Collector

The collector makes use of this project https://github.com/stevespringett/nist-data-mirror/

If you want to make use of this in your builds, you might want to run the collector as a cronjob.
