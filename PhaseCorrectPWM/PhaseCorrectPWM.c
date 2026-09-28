#include<avr/io.h>
int main(){
DDRB |= (1<<1);
TCCR1A |= (1<<7)|(1<<6)|(1<<1);
TCCR1B |= (1<<4)|(1<<2)|(1<<0);
ICR1 = (15624*2);
OCR1A = 7812;
while(1){
	//Continue
}
return 0;
}