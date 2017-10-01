#!/usr/bin/python

import rospy
import time
import serial
from myrobot_msgs.msg import led

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "get the led command:  %s", data.command)

def main():
    rospy.init_node('led_listener',anonymous=True)
    rospy.Subscriber("tcptopic", led, callback)
    rospy.spin()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
