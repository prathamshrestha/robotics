#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import math
import tf
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry

class JetAutoSquareController:
    def __init__(self):
        rospy.init_node('jetauto_precise_square')
        self.pub = rospy.Publisher('/jetauto_controller/cmd_vel', Twist, queue_size=10)
        self.sub = rospy.Subscriber('/odom', Odometry, self.odom_callback)
        
        self.x, self.y, self.yaw = 0.0, 0.0, 0.0
        self.dist_thresh = 0.02
        self.ang_thresh = math.radians(3.0)

    def odom_callback(self, msg):
        self.x = msg.pose.pose.position.x
        self.y = msg.pose.pose.position.y
        q = msg.pose.pose.orientation
        _, _, self.yaw = tf.transformations.euler_from_quaternion([q.x, q.y, q.z, q.w])

    def move_to(self, tx, ty, tyaw, rotate_while_moving=False):
        # --- Tuning Parameters ---
        MAX_LIN = 0.8  # Increased from default for faster strafing
        MAX_ANG = 1.0  # Max turning speed in rad/s
        KP_LIN = 1.2   # Higher gain = faster acceleration/deceleration
        KP_ANG = 1.5   
    
        rate = rospy.Rate(25)
        while not rospy.is_shutdown():
	    dx, dy = tx - self.x, ty - self.y
	    dist = math.sqrt(dx**2 + dy**2)
	
	    # Local frame transformation for mecanum strafing
	    local_x = dx * math.cos(self.yaw) + dy * math.sin(self.yaw)
	    local_y = -dx * math.sin(self.yaw) + dy * math.cos(self.yaw)
	
	    yaw_err = self.normalize_angle(tyaw - self.yaw)

	    # Check thresholds
	    if dist < self.dist_thresh and abs(yaw_err) < self.ang_thresh:
	        break

	    cmd = Twist()
	
	    # Position Control with Velocity Capping
	    if dist > self.dist_thresh:
	        vx = KP_LIN * local_x
	        vy = KP_LIN * local_y
	    
	    # Scale velocities if they exceed MAX_LIN to maintain direction
	        mag = math.sqrt(vx**2 + vy**2)
	        if mag > MAX_LIN:
	            vx = (vx / mag) * MAX_LIN
	            vy = (vy / mag) * MAX_LIN
	    
	        cmd.linear.x = vx
	        cmd.linear.y = vy

	    # Rotation Control
	    if rotate_while_moving or (dist < self.dist_thresh):
	        wz = KP_ANG * yaw_err
	        # Cap angular velocity
	        cmd.angular.z = max(min(wz, MAX_ANG), -MAX_ANG)

	    self.pub.publish(cmd)
	    rate.sleep()

        self.pub.publish(Twist()) 
        rospy.sleep(0.2) # Reduced pause for faster lap transitions

    def normalize_angle(self, angle):
        return math.atan2(math.sin(angle), math.cos(angle))

    def run_pattern(self):
        for lap in range(2):
            rospy.loginfo("Starting Lap %d/2", lap + 1)
            
            # Step 1: Forward to (1, 0, 0 deg)
            rospy.loginfo("Step 1: Moving Forward")
            self.move_to(1.0, 0.0, 0.0)

            # Step 2: Sideways Left to (1, 1, 0 deg) - Keep orientation fixed
            rospy.loginfo("Step 2: Strafing Left")
            self.move_to(1.0, 1.0, 0.0)

            # Step 3: Turn Clockwise to -90 deg at (1, 1)
            rospy.loginfo("Step 3: Turning Clockwise")
            self.move_to(1.0, 1.0, -math.pi/2)

            # Step 4: Sideways Right to (0, 1, -90 deg)
            rospy.loginfo("Step 4: Strafing Right")
            self.move_to(0.0, 1.0, -math.pi/2)

            # Step 5: Return to Origin (0,0,0) - Rotate while moving
            rospy.loginfo("Step 5: Returning with Rotation")
            self.move_to(0.0, 0.0, 0.0, rotate_while_moving=True)

if __name__ == '__main__':
    try:
        raw_input("Press Enter to start sequence...")
        bot = JetAutoSquareController()
        rospy.sleep(1.0)
        bot.run_pattern()
    except rospy.ROSInterruptException: pass
