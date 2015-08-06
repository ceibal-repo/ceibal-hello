VERSION=`dpkg-parsechangelog --show-field Version`

all: ceibal-hello

ceibal-hello.c: ceibal-hello.c.in
	sed -e 's/{VERSION}/$(VERSION)/' ceibal-hello.c.in > ceibal-hello.c

clean:
	rm -f ceibal-hello ceibal-hello.c

install: all
	mkdir -p $(DESTDIR)/usr/bin
	install ceibal-hello $(DESTDIR)/usr/bin
