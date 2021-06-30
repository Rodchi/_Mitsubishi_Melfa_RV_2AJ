function [xM,yM,zM,alpha,beta] = getXYZ(theta,theta2,theta3,theta4,theta5)
theta = theta*pi/180;
theta2 = theta2*pi/180;
theta3 = theta3*pi/180;
theta4 = theta4*pi/180;
theta5 = theta5*pi/180;

d5 = 72; a2 = 250; a3 = 160; d1 = 300;
C1 = cos(theta); C2 = cos(theta2); C3 = cos(theta3); C4 = cos(theta4); C5 = cos(theta5); S1 = sin(theta);
S2 = sin(theta2); S3 = sin(theta3); S4 = sin(theta4); S5 = sin(theta5);
A = (C2*C3)-(S2*S3);
B = C2*S3 + C3*S2; 
xM = 2*cos(theta)*(36*sin(theta2 + theta3 + theta4) + 80*sin(theta2 + theta3) + 125*sin(theta2));
yM = 2*sin(theta)*(36*sin(theta2 + theta3 + theta4) + 80*sin(theta2 + theta3) + 125*sin(theta2));
zM = 72*cos(theta2 + theta3 + theta4) + 160*cos(theta2 + theta3) + 250*cos(theta2) + 300;
beta = rad2deg(theta2+theta3+theta4);
alpha = rad2deg(theta*cosd(beta)+theta5);

T = [sin(theta5)*sin(theta)-cos(theta2)*cos(theta3)*cos(theta4)*cos(theta5)*cos(theta) + cos(theta2)*cos(theta5)*cos(theta)*sin(theta3)*sin(theta4)+cos(theta3)*cos(theta5)*cos(theta)*sin(theta2)*sin(theta4)+cos(theta4)*cos(theta5)*cos(theta)*sin(theta2)*sin(theta3) cos(theta5)*sin(theta)+cos(theta2)*cos(theta3)*cos(theta4)*cos(theta)*sin(theta5)-cos(theta2)*cos(theta)*sin(theta3)*sin(theta4)*sin(theta5)-cos(theta3)*cos(theta)*sin(theta2)*sin(theta4)*sin(theta5)-cos(theta4)*cos(theta)*sin(theta2)*sin(theta3)*sin(theta5)  sin(theta2 + theta3 + theta4 - theta)/2+sin(theta2 + theta3 + theta4 + theta)/2 2*cos(theta)*(36*sin(theta2 + theta3 + theta4)+80*sin(theta2 + theta3)+125*sin(theta2));
 cos(theta2)*cos(theta5)*sin(theta3)*sin(theta4)*sin(theta)-cos(theta2)*cos(theta3)*cos(theta4)*cos(theta5)*sin(theta) - cos(theta)*sin(theta5)+cos(theta3)*cos(theta5)*sin(theta2)*sin(theta4)*sin(theta) + cos(theta4)*cos(theta5)*sin(theta2)*sin(theta3)*sin(theta) cos(theta2)*cos(theta3)*cos(theta4)*sin(theta5)*sin(theta) - cos(theta5)*cos(theta) - cos(theta2)*sin(theta3)*sin(theta4)*sin(theta5)*sin(theta)-cos(theta3)*sin(theta2)*sin(theta4)*sin(theta5)*sin(theta)-cos(theta4)*sin(theta2)*sin(theta3)*sin(theta5)*sin(theta) cos(theta2 + theta3 + theta4 - theta)/2-cos(theta2 + theta3 + theta4 + theta)/2 2*sin(theta)*(36*sin(theta2 + theta3 + theta4)+80*sin(theta2 + theta3)+125*sin(theta2));
                                                                                                                                                                                        sin(theta2 + theta3 + theta4 - theta5)/2 + sin(theta2 + theta3 + theta4 + theta5)/2,                                                                                                                                                                                        cos(theta2 + theta3 + theta4 + theta5)/2 - cos(theta2 + theta3 + theta4 - theta5)/2,                                                     cos(theta2 + theta3 + theta4),         72*cos(theta2 + theta3 + theta4) + 160*cos(theta2 + theta3) + 250*cos(theta2) + 300;
                                                                                                                                                                                                                                                     0,                                                                                                                                                                                                                                                                          0,                                                                                 0,                                                                                           1];
                                                                                                                                                                                                                                                      fprintf('X = %.1f \n',xM);  
                                                                                                                                                                                                                                                      fprintf('Y = %.1f \n',yM);  
                                                                                                                                                                                                                                                      fprintf('Z = %.1f \n',zM);  
                                                                                                                                                                                                                                                      fprintf('alpha = %.1f \n',alpha);  
                                                                                                                                                                                                                                                      fprintf('beta = %.1f \n',beta);  