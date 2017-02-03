link.bin: start.o main.o 
	$(CROSS_COMPILE)ld -Tlink.lds -o link.elf $^
	$(CROSS_COMPILE)objcopy -O binary link.elf link.bin
	$(CROSS_COMPILE)objdump -D link.elf > link_elf.dis
	gcc mkv210_image.c -o mkmini210
	./mkmini210 link.bin 210.bin

%.o : %.S
	$(CROSS_COMPILE)gcc -o $@ $< -c 

%.o : %.c
	$(CROSS_COMPILE)gcc -o $@ $< -c 

clean:
	rm *.o *.elf *.bin *.dis mkmini210 -f
