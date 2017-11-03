#!/usr/bin/env python3

import rospy
import time
import serial
import serial.tools.list_ports
from myrobot_msgs.msg import led

def callback(data):
	rospy.loginfo(rospy.get_caller_id() + "get the led command:  %s", data.command)
	try:
		plist = list(serial.tools.list_ports.comports())
		plist_0 = list(plist[0])
		serialName = plist_0[0]	
		ser = serial.Serial(serialName, 9600, timeout=0)
		print(ser.name)
		#totally the same as stephen's serial code
		var1=data.command
		#var1="1 2 3 4 5"
		var2 = var1.split()
		print(var2)
		bytesToSend = len(var2)
		for i in range(0,bytesToSend):
			var1 = int(var2[i])
			#print("var1",var1)
			var = bytes([var1])
			#print("var",var)
			#print("you entered", str(var, 'utf-8'), var1)
			ser.write(var)

		while(not(ser.in_waiting)):
			s = 'A'
		s = ser.read(bytesToSend)
		print(s)
		ser.close()
	
	except:
		print("cannot open the serial")

def main():
	rospy.init_node('led_listener',anonymous=True)
	rospy.Subscriber("/tcptopic", led, callback)
	rospy.spin()

if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException:
		pass
