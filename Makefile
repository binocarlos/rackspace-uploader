.PHONY: all install copyfiles dependencies json.sh

all:
	# Type "make install" to install.

install: dependencies copyfiles

copyfiles:
	cp -f rackspace-uploader /usr/local/bin/rackspace-uploader

dependencies: json.sh

json.sh:
	wget -qO /usr/local/bin/JSON.sh https://raw.github.com/dominictarr/JSON.sh/master/JSON.sh
	chmod a+x /usr/local/bin/JSON.sh