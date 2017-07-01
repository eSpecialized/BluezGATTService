# BluezGATTService
Expansion to make gatt-service.c useful from the bluez source code

Based from Bluez 5.45 gatt-service.c for BLE (Bluetooth Low Energy)

Basically after lots of time of searching for a solution in C code for BlueZ making a BLE service with a single characteristic, and to send and receive data. I found this.

It is already using the DBus for IPC to and from the Bluez to create a GATT Application, register itself, the service, a characteristic, and a descriptor all for use.

What works;
  Notify
  Read
  Write

What changed?
  I retooled it to allow sending/receiving data.

It can basically stand alone and run, and you interface with it via IPC shared memory from your own program.

Added;
 Posix threading
 A second thread that accepts commands
 
 
Why Fork?
  You want to remove the input and make it a daemon?
  You want to go more elegant than IPC shared memory.


How to build?
  Once you have Bluez 5.45 configured and building, you can then just insert this into the ./tools/ directory.

Bluez 5.45 configure;
  ./configure --enable-library --enable-manpages --enable-deprecated --disable-obex --enable-experimental --enable-test --disable-silent-rules
  
