rackspace-uploader
==================

bash script that uploads a local folder to rackspace files using curl

## variables

```
Usage: rackspace-uploader [options]

-h|--help             show this help text
                     
-f|--folder           path to a local folder to upload
-u|--username         the rackspace username
-a|--apikey           the rackspace apikey
-c|--container        the rackspace container

Environment Variables:

RACKSPACE_FOLDER -> --folder
RACKSPACE_USERNAME -> --user
RACKSPACE_APIKEY -> --apikey
RACKSPACE_CONTAINER -> --container
```

## example

Upload a folder using environment variables:

```bash
$ RACKSPACE_FOLDER=[folder] \
  RACKSPACE_USERNAME=[username] \
  RACKSPACE_APIKEY=[apikey] \
  RACKSPACE_CONTAINER=[containername] \
  rackspace-uploader
```

Upload a folder using command line options:

```bash
$ rackspace-uploader \
  --folder=[folder] \
  --username=[username] \
  --apikey=[apikey] \
  --container=[container]
```

You could also use a combination of the two.

## docker
The Dockerfile in the repository will build a container ready to run the uploader.

Also - quarry/rackspace-uploader is a trusted build from this repo.

To use the docker container you need to mount the folder you want to upload:

```bash
$ docker run -i -t \
 -v /my/folder/to/upload:/uploadfiles \
 quarry/rackspace-uploader \
 --folder=/uploadfiles
 --username=[username]
 --apikey=[apikey] \
 --container=[container]
```



