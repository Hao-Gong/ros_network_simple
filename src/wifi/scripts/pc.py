#!/usr/bin/python
#-*-coding:utf-8-*- 

import rospy
import time
from myrobot_msgs.msg import led

def main():
    rospy.init_node('tcptalker',anonymous=True)
    pub=rospy.Publisher('tcptopic',led,queue_size=10)
    led_msg=led()
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
	led_msg.command=str("88")
	rospy.loginfo(led_msg.command)
 	pub.publish(led_msg)
	rate.sleep()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass

