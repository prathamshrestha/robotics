#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
from geometry_msgs.msg import Twist

def send(pub, lin_x, ang_z, duration):
    twist = Twist()
    twist.linear.x = lin_x
    twist.angular.z = ang_z
    rate = rospy.Rate(20)
    end_time = rospy.Time.now() + rospy.Duration(duration)
    while rospy.Time.now() < end_time:
        pub.publish(twist)
        rate.sleep()
    pub.publish(Twist())  # stop
    rospy.sleep(1.0)       # pause between steps

def square_pattern(pub):
    LIN = 0.25   # m/s
    ANG = 0.5    # rad/s

    for i in range(2):  # repeat 2 times
        rospy.loginfo("Pattern loop %d/2" % (i+1))

        # Step 1: Move forward from (0, 0) to (1, 0)
        send(pub, LIN, 0.0, 4.0)

        # Step 2: Turn left to face +y direction
        send(pub, 0.0, ANG, 1.57 / ANG)  # 90°

        # Step 3: Move forward to (1, 1)
        send(pub, LIN, 0.0, 4.0)
	
	send(pub, 0.0, ANG, 1.57 / ANG)

	send(pub, LIN, 0.0, 4.0)

	send(pub, 0.0, ANG, 1.57 / ANG)

	send(pub, LIN, 0.0, 4.0)
	
	send(pub, 0.0, ANG, 1.57 / ANG)

        # Step 4: Turn 180° to face down
        # send(pub, 0.0, -ANG, 3.14 / ANG)  # -180°

        # Step 5: Move in a curve (forward + right turn) to return to origin
        # send(pub, LIN, -ANG, 4.0)

    rospy.loginfo("Completed 2 square movement patterns.")

if __name__ == '__main__':
    rospy.init_node('jetauto_square_pattern')
    pub = rospy.Publisher('/jetauto_controller/cmd_vel', Twist, queue_size=10)
    rospy.sleep(2.0)

    try:
        square_pattern(pub)
    except rospy.ROSInterruptException:
        pass

