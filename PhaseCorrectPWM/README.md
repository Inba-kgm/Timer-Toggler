# Frequency and Phase Correct PWM

The major difference between Frequency and Phase correct PWM is the in the name itself
The Phase is corrected that means in FastPWM Changing the TOP value changes the Pulse place but in the PhaseCorrectPWM ,whatever the dutycycle is,
the PWM is centered and Frequency Correct means When the TOP value is changed when the Timer is running the Compare value change affects the Width(Frequency)
of the Pulse for that one Pulse it is corrected in this MODE as it Updates the Compare value at the BOTTOM, not like the TOP of other PWM

These are the PWM's Generated:
### PWM of 50% duty cycle
<img width="1593" height="977" alt="screenshot_20260928_185237" src="https://github.com/user-attachments/assets/e20b57d9-87d6-4985-b4d9-4ce6abaf804b" />

###  PWM of 25% duty cycle
<img width="1593" height="976" alt="screenshot_20260928_185719" src="https://github.com/user-attachments/assets/d8c4b70f-e8ea-4d08-ab47-759c47e666fc" />

###  PWM of TOP value increased made the PWM with to expannd
<img width="1595" height="976" alt="screenshot_20260928_185951" src="https://github.com/user-attachments/assets/3e2d23bf-ee59-4ab3-9327-be1102273e32" />
