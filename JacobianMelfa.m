function [J] = JacobianMelfa(theta1, theta2, theta3, theta5, theta6)

theta1 = deg2rad(theta1);
theta2 = deg2rad(theta2);
theta3 = deg2rad(theta3);
theta5 = deg2rad(theta5);
theta6 = deg2rad(theta6);

A1 = GetDHParameters(theta1, 300, 0, -pi/2);
A2 = GetDHParameters(theta2 - pi/2, 0, 250, 0);
A3 = GetDHParameters(theta3, 0, 160, 0);
A4 = GetDHParameters(theta5 + pi/2, 0, 0, pi/2);
A5 = GetDHParameters(theta6, 72, 0, 0);

T01=(A1);
T02=(A1*A2);
T03=(A1*A2*A3);
T04=(A1*A2*A3*A4);
T05=(A1*A2*A3*A4*A5);

z0=[0,0,1]';
z1=[T01(1:3,3)];
z2=[T02(1:3,3)];
z3=[T03(1:3,3)];
z4=[T04(1:3,3)];

O0=[0,0,0]';
O1=[T01(1:3,4)];
O2=[T02(1:3,4)];
O3=[T03(1:3,4)];
O4=[T04(1:3,4)];
O5=[T05(1:3,4)];

J1=([cross(z0,(O5-O0));z0]);
J2=([cross(z1,(O5-O1));z1]);
J3=([cross(z2,(O5-O2));z2]);
J4=([cross(z3,(O5-O3));z3]);
J5=([cross(z4,(O5-O4));z4]);

J1 = double(J1);
J2 = double(J2);
J3 = double(J3);
J4 = double(J4);
J5 = double(J5);
J=[J1 J2 J3 J4 J5];

end