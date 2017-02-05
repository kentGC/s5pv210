BL2.bin: start.o main.o
	$(CROSS_COMPILE)ld -Tsdram.lds -o BL2.elf $^
	$(CROSS_COMPILE)objcopy -O binary BL2.elf BL2.bin
	$(CROSS_COMPILE)objdump -D BL2.elf > BL2_elf.dis
	
%.o : %.S
	$(CROSS_COMPILE)gcc -o $@ $< -c  

%.o : %.c
	$(CROSS_COMPILE)gcc -o $@ $< -c   

clean:
	rm *.o *.elf *.bin *.dis -f
