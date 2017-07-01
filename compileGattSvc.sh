#!/bin/bash


idepbase=`echo tools/gatt-svc.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
gcc -DHAVE_CONFIG_H -I.  -I./lib     -I/usr/include/dbus-1.0 -I/usr/lib/x86_64-linux-gnu/dbus-1.0/include  -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include   -g -O2 -MT tools/gatt-svc.o -MD -MP -MF $depbase.Tpo -c -o tools/gatt-svc.o tools/gatt-svc.c &&\
mv -f $depbase.Tpo $depbase.Po

/bin/bash ./libtool  --tag=CC   --mode=link gcc    -I/usr/include/dbus-1.0 -I/usr/lib/x86_64-linux-gnu/dbus-1.0/include  -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include   -g -O2   -o tools/gatt-svc tools/gatt-svc.o -lglib-2.0  -ldbus-1  gdbus/libgdbus-internal.la -lpthread

