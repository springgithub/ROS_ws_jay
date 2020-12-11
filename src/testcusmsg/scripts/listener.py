#!/usr/bin/env python
import rospy
from myx.msg import IoTSensor

def callback(aIoTSensor):
    rospy.loginfo(rospy.get_caller_id() + "get %s id=%i", aIoTSensor.name, aIoTSensor.id)
    
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("chatter", IoTSensor, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
    rospy.Subscriber("chatter", IoTSensor, callback)

