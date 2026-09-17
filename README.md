# Timer-Toggler
These are the tasks accomplished while understanding timer with no HAL(Hardware Abstraction Layer)

Only with pure Baremetal

# 1.wave_gen

This is where the code produces a square with the MPU doing nothing

Just by using timer with CTC mode and inbuilt hardware connection with OCxA/OCxB pins,

a simple square wave is genrated by just toggling on and off the PB1 by setting in toggle mode

So this generates a square pulse
<img width="1612" height="1009" alt="image" src="https://github.com/user-attachments/assets/22507b45-d748-4774-b80c-5a849569acad" />

# 2.isr

This is also a code which produces a square wave with no loop running

the difference is insted of seeting OC1A in Toggle mode,

Toggle manually with the help of interrupts called by setted flag value by the hardware the the outpu value is reached on the Counter

So this generates a square wave
<img width="1607" height="1006" alt="image" src="https://github.com/user-attachments/assets/4db079b5-5939-459c-ab12-80e1061e3c15" />

# 4. FastPWM
### (Used avr/io.h because getting help of my previous code with memory address was so difficult)

Here , a PWM signal is generated with only internal Hardware timer circuit , leaving the MC with no load on it , and the Width of the Pusle

is controlled with the OCRnx value , so that the width of the PWM signal is modified that is , when the TCCR == OCRnx the OCnx PIN is set to

bottom and reset when the TOP value is reached the TCCR is set to 0 and then the OCnx is set to TOP , the prescalar is set to 256 here,

## Problem Arose:

The prescalar which was set at first(64) was making the timer to count the time for 1 second as it counts till 249999 which was too high for 

the counter variable which is 16 bit variable which is 2^16 = 65536 , 65536 << 249999 so the variable storing was messed up

These are the PWM pulse generated:
<img width="1622" height="1006" alt="image" src="https://github.com/user-attachments/assets/ba1da08f-04ae-4ab3-98c4-5041ed4c67d1" />
<img width="1627" height="1002" alt="image" src="https://github.com/user-attachments/assets/27e85e96-7d37-495b-8375-e723537b633c" />

