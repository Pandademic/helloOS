void say_hello(void)
{
  const char *str = "Good morning world";
	char *vidptr = (char*)0xb8000; 	//video mem begins here.
	unsigned int i = 0;
	unsigned int j = 0;

	/* this loops clears the screen
	* there are 25 lines each of 80 columns; each element takes 2 bytes */
	while(j < 80 * 25 * 2) {
		/* blank character */
		vidptr[j] = ' ';
		vidptr[j+1] = 0x11; 		
		j = j + 2;
	}

	j = 0;

	/* this loop writes the string to video memory */
	while(str[j] != '\0') {
		/* the character's ascii */
		vidptr[i] = str[j];
		vidptr[i+1] = 0x11;
		++j;
		i = i + 2;
	}
	return;

}
void kernel_main(void)
{
  say_hello();
}
