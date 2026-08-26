#include<stdint.h>

volatile uint8_t *ddrd = (uint8_t*)0x2A;
volatile uint8_t *ddrb = (uint8_t*)0x24;
volatile uint8_t *ddrc = (uint8_t*)0x27;

volatile uint8_t *portd = (uint8_t*)0x2B;
volatile uint8_t *portb = (uint8_t*)0x25;
volatile uint8_t *portc = (uint8_t*)0x28;

volatile uint8_t *pind = (uint8_t*)0x29;
volatile uint8_t *pinb = (uint8_t*)0x23;
volatile uint8_t *pinc = (uint8_t*)0x26;


volatile uint8_t *timer1_ctrl_A = (uint8_t*)0x80;
volatile uint8_t *timer1_ctrl_B = (uint8_t*)0x81;
volatile uint8_t *timer1_flag = (uint8_t*)0x36;
volatile uint16_t *timer1_counter = (uint16_t*)0x84;
volatile uint8_t *timer1_counter_H = (uint8_t*)0x85;
volatile uint16_t *timer1_output_compare = (uint16_t*)0x88;
volatile uint8_t *timer1_output_compare_L = (uint8_t*)0x88;
volatile uint8_t *timer1_mask = (uint8_t*)0x6F;
volatile uint8_t *sreg = (uint8_t*)0x5F;
volatile uint16_t *input_capture_1 = (uint16_t*)0x86;

void __attribute__((signal,used,externally_visible))__vector_10(){
	*timer1_ctrl_B ^= (1<<6);
	*timer1_flag |=(1<<5);
	if(*timer1_ctrl_B & (1<<6)){
	*portb|= (1<<5);
	}
	else{
	*portb &= ~(1<<5);
	}
}

int main(){

    *ddrb &= ~(1<<0);
	*ddrb |= (1<<5);
	*portb |= (1<<0);
    *timer1_ctrl_A = 0;
	*timer1_counter = 0;
    *sreg |= (1<<7);
	*timer1_flag |= (1<<5);
	*timer1_mask |= (1<<5);
	*timer1_ctrl_B |= (1<<2);
	*timer1_ctrl_B &= ~(1<<6);
    while(1){

    }
}