
build: package/*
	dpkg -b ./package ./pi-bootstrap.deb

lint: build
	lintian -c pi-bootstrap.deb

inspect: build
	dpkg -I ./pi-bootstrap.deb
	dpkg -c ./pi-bootstrap.deb

clean: 
	rm ./*.deb

