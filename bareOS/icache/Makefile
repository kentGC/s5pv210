led_icache.bin: start.o led.o
	$(CROSS_COMPILE)ld -Ttext 0x0 -o led_icache.elf $^
	$(CROSS_COMPILE)objcopy -O binary led_icache.elf led_icache.bin
	$(CROSS_COMPILE)objdump -D led_icache.elf > led_icache_elf.dis
	gcc mkv210_image.c -o mkmini210
	./mkmini210 led_icache.bin 210.bin
%.o : %.S
	$(CROSS_COMPILE)gcc -o $@ $< -c

%.o : %.c
	$(CROSS_COMPILE)gcc -o $@ $< -c 

clean:
	rm *.o *.elf *.bin *.dis mkmini210 -f
