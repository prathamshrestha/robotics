#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
import sys
import tty
import termios

def get_key():
    """Reads a single keypress from terminal (non-blocking)"""
    fd = sys.stdin.fileno()
    old_settings = termios.tcgetattr(fd)
    try:
        tty.setraw(fd)
        key = sys.stdin.read(1)
    finally:
        termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
    return key

def main():
    if len(sys.argv) < 2:
        print("Usage: rosrun lab3_turtlesim turtle_controller.py <turtle_name>")
        return

    turtle_name = sys.argv[1]
    topic = "/{}/cmd_vel".format(turtle_name)

    rospy.init_node('turtle_controller', anonymous=True)
    pub = rospy.Publisher(topic, Twist, queue_size=10)
    rate = rospy.Rate(10)

    print("Control the turtle using keys:")
    print("  W - forward\n  S - backward\n  A - turn left\n  D - turn right")
    print("  Q - curve left\n  E - curve right\n  Z - reverse + left\n  C - reverse + right")
    print("Press X to exit")

    while not rospy.is_shutdown():
        key = get_key()
        twist = Twist()

        if key == 'w':
            twist.linear.x = 2.0
        elif key == 's':
            twist.linear.x = -2.0
        elif key == 'a':
            twist.angular.z = 2.0
        elif key == 'd':
            twist.angular.z = -2.0
        elif key == 'q':
            twist.linear.x = 2.0
            twist.angular.z = 2.0
        elif key == 'e':
            twist.linear.x = 2.0
            twist.angular.z = -2.0
        elif key == 'z':
            twist.linear.x = -2.0
            twist.angular.z = 2.0
        elif key == 'c':
            twist.linear.x = -2.0
            twist.angular.z = -2.0
        elif key == 'x':
            break  # exit loop

        pub.publish(twist)
        rate.sleep()

        # Stop turtle after each key
        pub.publish(Twist())

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass

