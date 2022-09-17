#!/usr/bin/bash

rosservice call /reset
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- \
 '[-2.0, 0.0, 0.0]' '[0.0, 0.0, 3]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- \
 '[-2.5, 0.0, 0.0]' '[0.0, 0.0, -4]'

