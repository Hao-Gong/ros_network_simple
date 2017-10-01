#!/usr/bin/python

import rospy
import time
from myrobot_msgs.msg import led

def main():
    rospy.init_node('tcptalker',anonymous=True)
    pub=rospy.Publisher('tcptopic',led,queue_size=10)
    led_msg=led()
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
	# cast input as int
	command_str= input("Please enter something: ")
	led_msg.command=str(command_str)
	# print on the screen the commod again
	rospy.loginfo(led_msg.command)
	#publish to the topic
 	pub.publish(led_msg)
	rate.sleep()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
