#!/usr/bin/env python3
import rospy
import time
from std_msgs.msg import String



def main():
	rospy.init_node('model_controler',anonymous=0)
	pub=rospy.Publisher('/controler',String,queue_size=10)
	rate = rospy.Rate(100) # 10hz
	string_msg=String()
	while not rospy.is_shutdown():
	# cast input as int
		command_str= input("Please enter something: ")
		Sring=str(command_str)
		# print on the screen the commod again
		rospy.loginfo(Sring)
		#publish to the topic
		pub.publish(Sring)
		rate.sleep()

if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException:
		pass
