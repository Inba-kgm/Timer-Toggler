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

# 5. Frequency and Phase Correct PWM
The major difference between Frequency and Phase correct PWM is the in the name itself

The Phase is corrected that means in FastPWM Changing the TOP value changes the Pulse place but in the PhaseCorrectPWM ,whatever the dutycycle is,

the PWM is centered and Frequency Correct means When the TOP value is changed when the Timer is running the Compare value change affects the Width(Frequency)

of the Pulse for that one Pulse it is corrected in this MODE as it Updates the Compare value at the BOTTOM, not like the TOP of other PWM

These are the PWM's Generated:
### PWM of 50% duty cycle
<img width="1593" height="977" alt="screenshot_20260928_185237" src="https://github.com/user-attachments/assets/e20b57d9-87d6-4985-b4d9-4ce6abaf804b" />
### PWM of 25% duty cycle
<img width="1593" height="976" alt="screenshot_20260928_185719" src="https://github.com/user-attachments/assets/d8c4b70f-e8ea-4d08-ab47-759c47e666fc" />
### PWM of TOP value increased made the PWM with to expannd
<img width="1595" height="976" alt="screenshot_20260928_185951" src="https://github.com/user-attachments/assets/3e2d23bf-ee59-4ab3-9327-be1102273e32" />
