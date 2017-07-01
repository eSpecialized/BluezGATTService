
#!/bin/sh
#libtoolize

aclocal
#autoheader
autoconf
automake -a -c


./configure --enable-library --enable-manpages --enable-deprecated --disable-obex --enable-experimental --enable-test --disable-silent-rules
make

