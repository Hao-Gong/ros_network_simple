#!/usr/bin/python

import rospy
import time
from myrobot_msgs.msg import led
from std_msgs.msg import String

def main():
    rospy.init_node('control',anonymous=0)
    pub=rospy.Publisher('/model/order',String,queue_size=10)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
	# cast input as int
	command_str= raw_input("Please enter something: ")
	# print on the screen the commod again
	rospy.loginfo(command_str)
	#publish to the topic
 	pub.publish(command_str)
	rate.sleep()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
