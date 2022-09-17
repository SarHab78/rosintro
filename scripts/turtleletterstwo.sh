#!/usr/bin/bash

rosservice call /reset
rosservice call /spawn 7 3 0.2 ""
rosservice call /turtle1/set_pen 255 234 0 5 0
rosservice call /turtle2/set_pen 0 255 255 5 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- \
'[-2.0, 0.0, 0.0]' '[0.0, 0.0, 3]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- \
'[-2.5, 0.0, 0.0]' '[0.0, 0.0, -4]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- \
'[1.0, 3.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- \
 '[1.0, -3.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- \
 '[-0.5, 1.5, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- \
 '[-0.75, 0.0, 0.0]' '[0.0, 0.0, 0.0]'


