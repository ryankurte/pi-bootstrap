
pi-bootstrap.deb: package/*
	dpkg -b ./package ./pi-bootstrap.deb

inspect: pi-bootstrap.deb
	dpkg -I ./pi-bootstrap.deb
	dpkg -c ./pi-bootstrap.deb
