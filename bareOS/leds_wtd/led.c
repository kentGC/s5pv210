#define GPCON *((volatile unsigned int *)0xE0200280)
#define GPDAT *((volatile unsigned int *)0xE0200284)
void dalay( unsigned int i );
void dalay( unsigned int i )
{
	while (i--)
		;
}
int led_main()
{
	
	GPCON = 0x00001111;
	while (1) {
		GPDAT = 0xf;
		dalay(0x500000);
		GPDAT = 0x0;
		dalay(0x500000);
	}


}

