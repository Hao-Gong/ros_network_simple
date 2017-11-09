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

class ui_process(Frame):
    def __init__(self, master):

        master.geometry("400x150+600+300")
        master.resizable(width=False, height=False)

        fm0 = Frame(master)
        Label(fm0,text='Rviz_3D_model_controler by gong').pack(side=LEFT,anchor=W, fill=X, expand=YES)
        fm0.pack(side=TOP, fill=BOTH, expand=YES)

        #frame
        fm1=Frame(master)
        #botton
        Button(fm1, text="for+left", command=self.forwards_left_press).pack(side=LEFT,anchor=W, fill=X, expand=YES)
        Button(fm1, text="forwards(key:w)", command=self.forwards_press).pack(side=LEFT,anchor=W, fill=X, expand=YES)
        Button(fm1, text="for+right", command=self.forwards_right_press).pack(side=LEFT, anchor=W, fill=X, expand=YES)
        fm1.pack(side=TOP, fill=BOTH, expand=YES)

        fm2 = Frame(master)
        Button(fm2, text="left(key:a)", command=self.left_press).pack(side=LEFT,anchor=W, fill=X, expand=YES)
        Button(fm2, text="      origin      ", command=self.origin).pack(side=LEFT,anchor=W, fill=X, expand=YES)
        Button(fm2, text="right(key:d)", command=self.right_press).pack(side=LEFT,anchor=W, fill=X, expand=YES)
        fm2.pack(side=TOP, fill=BOTH, expand=YES)

        fm3 = Frame(master)
        Button(fm3, text="back+left", command=self.backwards_left_press).pack(side=LEFT,anchor=W, fill=X, expand=YES)
        Button(fm3, text="backwards(key:s)", command=self.backwards_press).pack(side=LEFT,anchor=W, fill=X, expand=YES)
        Button(fm3, text="back+right", command=self.backwards_right_press).pack(side=LEFT,anchor=W, fill=X, expand=YES)
        fm3.pack(side=TOP, fill=BOTH, expand=YES)

        fm4= Frame(master)
        #keyboard listening
        Label(fm4, text='Input from keyboard:').pack(side=LEFT,anchor=W, fill=X, expand=YES)
        self.keyboard_listening=Entry(fm4)
        self.keyboard_listening.pack(side=LEFT,anchor=W, fill=X, expand=YES)
        self.keyboard_listening.bind('<Key>',self.key_detect)
        Button(fm4, text=" clear", command=self.keyboard_clear).pack(side=LEFT, anchor=W, fill=X, expand=YES)
        fm4.pack(side=TOP, fill=BOTH, expand=YES)
        master.mainloop()

    def forwards_left_press(self):
        pub.publish("left")
        pub.publish("forwards")

    def forwards_right_press(self):
        pub.publish("right")
        pub.publish("forwards")

    def backwards_left_press(self):
        pub.publish("left")
        pub.publish("backwards")

    def backwards_right_press(self):
        pub.publish("right")
        pub.publish("backwards")

    def origin(self):
        pub.publish("origin")

    def left_press(self):
        pub.publish("left")

    def right_press(self):
        pub.publish("right")

    def forwards_press(self):
        pub.publish("forwards")

    def backwards_press(self):
        pub.publish("backwards")

    def key_detect(self,Event):
        #print("key:"+Event.char)
        if Event.char=="w":
            pub.publish("forwards")
        elif Event.char=="s":
            pub.publish("backwards")
        elif Event.char == "a":
            pub.publish("left")
        elif Event.char == "d":
            pub.publish("right")

    def keyboard_clear(self):
        self.keyboard_listening.delete('0', END)


def main():
    root = Tk()
    ui=ui_process(master=root)
    #ui.mainloop()

if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException:
		pass
