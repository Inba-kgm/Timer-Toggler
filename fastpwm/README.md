# FastPWM
### (Used avr/io.h because getting help of my previous code with memory address was so difficult)

Here , a PWM signal is generated with only internal Hardware timer circuit , leaving the MC with no load on it , and the Width of the Pusle
is controlled with the OCRnx value , so that the width of the PWM signal is modified that is , when the TCCR == OCRnx the OCnx PIN is set to
bottom and reset when the TOP value is reached the TCCR is set to 0 and then the OCnx is set to TOP , the prescalar is set to 256 here,
the top value is made adjustable using ICR1 in the FastPWM last commit so that the Duty cycle of the PWM can be altered.

## Problem Arose:

The prescalar which was set at first(64) was making the timer to count the time for 1 second as it counts till 249999 which was too high for 
the counter variable which is 16 bit variable which is 2^16 = 65536 , 65536 << 249999 so the variable storing was messed up.

The PWM generated at first was not perfect as the TCNT1 is at zero , the First pulse is not generated , as the OC1A is set when the TCNT1 
reaches BOTTOM as reaching BOTTOM and starting at zero is not the same, first set of OC1A is not initialised.


These are the PWM pulse generated:
### Changing the Width of PWM 
<img width="1622" height="1006" alt="image" src="https://github.com/user-attachments/assets/ba1da08f-04ae-4ab3-98c4-5041ed4c67d1" />
<img width="1627" height="1002" alt="image" src="https://github.com/user-attachments/assets/27e85e96-7d37-495b-8375-e723537b633c" />

### PWM of 25% of duty cycle(first cycle missed)
<img width="1591" height="977" alt="image" src="https://github.com/user-attachments/assets/3b882888-ea4f-4f81-9bd4-dc25c8b7a71e" />

### PWM of 25% duty cycle (with first pulse)
<img width="1571" height="977" alt="image" src="https://github.com/user-attachments/assets/bd4d87ed-d4cf-4b53-aac1-4ea59dca950c" />
