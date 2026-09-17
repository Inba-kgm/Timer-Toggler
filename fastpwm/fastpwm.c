#include<avr/io.h>
#include<avr/interrupt.h>
int main(){
	DDRB |= (1<<1);
    TCCR1A |= (1<<6)|(1<<0)|(1<<1);
    TCCR1B |= (1<<3)|(1<<4)|(1<<2);
    OCR1A |= 31249;
    while(1){
    }
}