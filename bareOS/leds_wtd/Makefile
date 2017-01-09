led_wtd.bin: start.o delay.o
	$(CROSS_COMPILE)ld -Ttext 0x0 -o led_wtd.elf $^
	$(CROSS_COMPILE)objcopy -O binary led_wtd.elf led_wtd.bin
	$(CROSS_COMPILE)objdump -D led_wtd.elf > led_wtd_elf.dis
	gcc mkv210_image.c -o mkmini210
	./mkmini210 led_wtd.bin 210.bin

%.o : %.S
	$(CROSS_COMPILE)gcc -o $@ $< -c

%.o : %.c
	$(CROSS_COMPILE)gcc -o $@ $< -c 


clean:
	rm *.o *.elf *.bin *.dis mkmini210 -f
