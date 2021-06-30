function [ForwVel,J] =ForwardVelocityMelfa(th1,th2,th3,th5,th6,jointVelocity)

J=JacobianMatrixMelfa(th1,th2,th3,th5,th6);
ForwardVel=J*jointVelocity;

Vx=ForwardVel(1:1);
Vy=ForwardVel(2:2);
Vz=ForwardVel(3:3);
Wx=ForwardVel(4:4);
Wy=ForwardVel(5:5);
Wz=ForwardVel(6:6);

ForwVel=[Vx,Vy,Vz,Wx,Wy,Wz];
end
