clear,clc;
mylego = legoev3;
filename = 'case3';
%case 1=50 case 2=80 case3=20
speed=80
legoIrSensor =  irSensor(mylego,4);
% Create a connection to a motor.
% Motors are connected to A,B,C,D.
mymotorR = motor(mylego,'C');
mymotorL = motor(mylego,'B');
% Adjust the speed of the motor. (-100,100)
% Positive values - forward direction
% Negative values - backward direction
mymotorR.Speed = 0;
mymotorL.Speed = 0;
% Start the motor
start(mymotorL)
start(mymotorR)

arrayL = [];
arrayR = [];


while ~readButton(mylego,'up')
    rotationL = readRotation(mymotorL);
    rotationR = readRotation(mymotorR);
    button    = readBeaconButton(legoIrSensor,2);
    
    
    if button == 1
        mymotorR.Speed = speed;
        mymotorL.Speed = speed;
    elseif button == 2
        mymotorR.Speed = -speed;
        mymotorL.Speed = -speed;
    elseif button == 3
        mymotorR.Speed = speed*0.2;
        mymotorL.Speed = speed;
    elseif button == 4
        mymotorR.Speed = speed;
        mymotorL.Speed = speed*0.2;
    elseif button == 5
        mymotorR.Speed = 0;
        mymotorL.Speed = 0;
    else
        mymotorR.Speed = 0;
        mymotorL.Speed = 0;
    end
    
    arrayL(end+1) = rotationL;
    arrayR(end+1) = rotationR;
    
    subplot(1,2,1);plot(arrayL);
    
    subplot(1,2,2);plot(arrayR);
    drawnow;

end
stop(mymotorL)
stop(mymotorR)

Data.arrayL = arrayL;
Data.arrayR = arrayR;
save(filename , 'Data');
