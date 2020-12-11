#!/usr/bin/env python
# license removed for brevity
import rospy
#from std_msgs.msg import String
from myx.msg import IoTSensor

def talker():
    pub = rospy.Publisher('chatter', IoTSensor, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz


#   IoTSensor data
    iotSensor = IoTSensor()
    iotSensor.id = 0
    iotSensor.name = 'jay'
    iotSensor.temp =  12.3
    iotSensor.humitidy = 52.2
    while not rospy.is_shutdown():
        hello_str = "hello world %s" % rospy.get_time()
        iotSensor.name = "jay %s" % rospy.get_time()
        iotSensor.id += 1
        rospy.loginfo(iotSensor.name)
        pub.publish(iotSensor)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass


