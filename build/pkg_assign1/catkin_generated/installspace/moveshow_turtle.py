#!/usr/bin/env python3
import rospy
from turtlesim.msg import Pose
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Vector3

def callback(aPose):
    rospy.loginfo(rospy.get_caller_id() + "jjj  x= %s", aPose.x )
    
def listener():

    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("turtle1/pose", Pose, callback)

    pub = rospy.Publisher( 'turtle1/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
       linear = Vector3()
       linear.x = 1.0
       linear.y = 0.0
       linear.z = 0.0

       angular = Vector3()
       angular.x = 0.0
       angular.y = 0.0
       angular.z = 0.0

       twist = Twist()
       twist.linear = linear
       twist.angular = angular

       rospy.loginfo( twist)
       pub.publish( twist )
       rate.sleep()
 
    rospy.spin()

if __name__ == '__main__':
    try:
    	listener()
    except rospy.ROSInterruptException:
        pass

