#pomodoro_timer.py
 
#!/usr/bin/env python
 
import time
 
import unicornhat as unicorn
 
 
print("""Simple
 
Turns each pixel on in turn and updates the display.
 
If you're using a Unicorn HAT and only half the screen lights up,
edit this example and  change 'unicorn.AUTO' to 'unicorn.HAT' below.
""") #This prints out this message in the terminal. Shamelessly stolen from the simple.py example included with the unicorn hat libraries
 
unicorn.set_layout(unicorn.AUTO)#auto detects the hat or phat
unicorn.rotation(0)
unicorn.brightness(0.5) #Sets brightness to 1/2 power
width,height=unicorn.get_shape()
 
#lights up each pixel in sequence and sets it to red
for y in range(height):
  for x in range(width):
    unicorn.set_pixel(x,y,255,0,50)
    unicorn.show()
    time.sleep(0.05)
#Unicornhat is set to red for 25 minutes
time.sleep(1500)
 
#sets pixels to green for 5 minutes during your work break
for y in range(height):
  for x in range(width):
    unicorn.brightness(0.25)
    unicorn.set_pixel(x,y,0,255,0)
    unicorn.show()
    time.sleep(0.05)
 
time.sleep(300)
 
#sets pixels back to red at 80% brightness and flashes them until you use ctrl-c to stop the script
while True:
        unicorn.brightness(0.8)
        unicorn.set_all(255,0,0)
        unicorn.show()
        time.sleep(0.25)
        unicorn.clear()
        unicorn.show()
        time.sleep(0.25)
