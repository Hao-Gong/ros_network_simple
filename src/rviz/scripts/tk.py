#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
import tkinter
from tkinter import *
from tkinter import messagebox
from tkinter import simpledialog
from tkinter import filedialog

rospy.init_node('model_controler', anonymous=0)
pub = rospy.Publisher('/controler', String, queue_size=10)
rate = rospy.Rate(100)  # 10hz

def ui_process():
    root = Tk()
    root.geometry("300x400+500+300")
    L_titile = Label(root,text='Rviz_3D_model_controler',)
    L_titile.config(font='Helvetica -15 bold',fg='blue')
    L_titile.place(x=150,y=20,anchor="center")
    L_author = Label(root, text='Hao')
    L_author.config(font='Helvetica -10 bold')
    L_author.place(x=250,y=380)
    #botton
    B_left = Button(root, text="   left   ", command=left_press)
    B_left.place(x=90,y=200)
    B_right= Button(root, text="   right   ", command=right_press)
    B_right.place(x=180,y=200)
    B_forwards = Button(root, text=" forwards ", command=forwards_press)
    B_forwards.place(x=120,y=150)
    B_backwards = Button(root, text=" backwards ", command=backwards_press)
    B_backwards.place(x=120,y=250)

    mainloop()


def left_press():
    pub.publish("left")

def right_press():
    pub.publish("right")

def forwards_press():
    pub.publish("forwards")

def backwards_press():
    pub.publish("backwards")

def main():
    ui_process()

if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException:
		pass
