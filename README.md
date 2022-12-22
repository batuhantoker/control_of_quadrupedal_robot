# control_of_quadrupedal_robot
MATLAB codes for control of a quadrupedal robot built with Lego Mindstorm EV3.

# Mechanical construction

![alt text](https://user-images.githubusercontent.com/55883119/209238749-aeb857f8-1727-47d0-bb86-5cf9076a7a51.jpeg)
Figure 1: Quadrupedal robot

Mechanical construction section basically requires building the robot by using small LEGO parts and control brick. Addition to LEGO parts and control brick, IR and touch sensor are employed. IR sensor was used to control robot remotely. Touch sensor was used in construction to be used in calibration.




# Control

The robot was programmed and controlled through MATLAB. The IR sensor and the remote controlled was used to control the robot. The control code to satisfy some case studies was created according to pre-defined channel for our robot. By configuration of the remote controller's buttons and the proper commands in the MATLAB code, we are able to have forward, backward, right, left and combinations of these movements. 

![alt text](https://user-images.githubusercontent.com/55883119/209238746-0f7b8bb5-9cbe-4a9d-a5c8-88436542c834.jpeg)

# Results

As it can be seen in the figures, robot is statically stable in terms of 4 contact point on the ground.

![alt text](https://user-images.githubusercontent.com/55883119/209238822-331f9a8b-7a54-4eb9-9a87-021758dfaa94.png)

Before the remote.m that allows us to control the robot legs, a calibration is must be done with “calibration.m”.

When there is need to turn one leg turn at 0.2 times of the original speed. Basically, the movement is going forward, backwards turn right and left. For three cases it had been done.

In the first case speed was 50 rpm, in the second 80 rpm and the third one 20 rpm. The difference of Encoder values is caused by the lack of a controller but other than that both legs move simultaneously.

Figure below presents the forward, backward, rotated forward motions of the robot for defined 50 RPM general speed for each motor. According to required motion of the robot, speeds of each motor is arranged, which is clearly represented in the figure. One can see the movement of the robot at given sequence of sampling time.\\

![alt text](https://user-images.githubusercontent.com/55883119/209240524-7456a167-62d1-42c3-83c8-837ac186e2a5.png)

Figure below presents the forward, backward, rotated forward motions of the robot for defined 80 RPM general speed for each motor. The movements are almost the same with the first case. One can see the effect of the speed rising.\\

![alt text](https://user-images.githubusercontent.com/55883119/209240527-ba81b981-618d-4945-b181-1cdacbff08cb.png)

In the Figure below we obtained encoder values of the motors for defined 20 RPM general speed. There cases were selected in order to be able to analyze speed's effect on accuracy of the motion. 

![alt text](https://user-images.githubusercontent.com/55883119/209240533-1368c72c-4834-4afb-95d7-30bde1f9d189.png)

