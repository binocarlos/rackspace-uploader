rackspace-uploader
==================

bash script that uploads a local folder to rackspace files using curl

## environment variables

 * RACKSPACE_USERNAME - your rackspace username
 * RACKSPACE_APIKEY - your rackspace apikey
 * RACKSPACE_CONTAINER - the name of the container to upload into

## options

You can specify the 3 values above as options to the script:

```
$ rackspace-uploader <username> <apikey> <container> <folder>
```

The folder to be uploaded is mounted as a volume as '/uploadfiles'

Running the script by passing the options as envrionment variables:

```
$ docker run -i -t \
 -v /my/folder/to/upload:/uploadfiles \
 -e RACKSPACE_USERNAME=<username> \
 -e RACKSPACE_APIKEY=<apikey> \
 -e RACKSPACE_CONTAINER=<containername> \
 quarry/rackspace-uploader
```

Also - the environment variables can be passed as options to the script.

```
$ docker run -i -t \
 -v /my/folder/to/upload:/uploadfiles \
 quarry/rackspace-uploader <username> <apikey> <containername>
```



