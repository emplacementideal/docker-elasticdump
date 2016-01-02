Lightweight​ Docker image for TaskRabbit's [elasticdump](https://github.com/taskrabbit/elasticsearch-dump).

Installation
------------

The `pentimento/elasticdump` image requires Docker to be installed and configured. See [official documentation](https://docs.docker.com/) for guidance.

The image must be pulled from Docker Hub before being used:

    $ docker pull pentimento/elasticdump
    
Check `pentimento/elasticdump` [Docker Hub page](https://hub.docker.com/r/pentimento/elasticdump/) for additional infos.

Usage
-----

Running elasticdump is pretty easy. Just run a Docker container from the image and pass arguments and options to it:

    $ docker run --rm -it pentimento/elasticdump --input=http://production.es.com:9200/my_index --output=http://staging.es.com:9200/my_index --type=mapping

Since the `pentimento/elasticdump` image tag numbers follow elasticdump versions numbering, you can also specify an elasticdump version by using Docker tags:

    $ docker run --rm -it pentimento/elasticdump:0.16.1 --input=http://production.es.com:9200/my_index --output=http://staging.es.com:9200/my_index --type=mapping

If no tag is provided, the latest version will be used.

See [elasticdump documentation](https://github.com/taskrabbit/elasticsearch-dump#use) for detailed usage.

Credits
-------

> If I have seen further it is by standing on ye sholders of Giants.
>
> <cite>&mdash;Isaac Newton</cite>

`pentimento/elasticdump` is a mashup of great tools done by others:

* [elasticdump](https://github.com/taskrabbit/elasticsearch-dump): The one tool that is the reason for this project.
* [Alpine Linux Docker Image](https://hub.docker.com/_/alpine/): A very lightweight Docker image `pentimento/elasticdump` is built upon.

License
-------

Copyright 2016 Pentimento

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software   distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
