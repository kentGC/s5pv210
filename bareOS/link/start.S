global _start

_start:
	ldr	r0, =0xE2700000			
	mov	r1, #0
	str	r1, [r0]

	ldr	sp, =0xD0037D80					
			
										
	adr r0, _start  		
	ldr r1, =_start 	
	ldr r2, =bss_start
	cmp r0, r1
	beq clean_bss
	
copy_loop:
	ldr r3, [r0], #4    
	str r3, [r1], #4	
	cmp r1, r2
	bne copy_loop


clean_bss:
	ldr r0, =bss_start					
	ldr r1, =bss_end
	cmp r0, r1
	beq run_on_dram
	mov r2, #0
clear_loop:
	str r2, [r0], #4
	cmp r0, r1
	bne clear_loop


	// Ìø×ª
run_on_dram:			 
	ldr pc, =main						


halt:
	b halt

