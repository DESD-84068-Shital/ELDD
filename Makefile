
obj-m = usb_drv.o

modules:
	make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -C /home/shital/linux/ M=`pwd` modules
	
copy:
	scp gpio-intr.ko debian@192.168.7.2:/home/debian
clean:
	make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -C /home/shital/linux/ M=`pwd` clean		
	
.PHONY: all clean

