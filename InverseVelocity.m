function [JointVelocity, J]=InverseVelocity(theta1,theta2,theta3,theta5,theta6,EndEffectorVelocity)

J=JacobianMatrixMelfa(theta1,theta2,theta3,theta5,theta6);
rank(J);
if rank(J)<5
    [U,S,V]=svd(J);
    Spos=[1/S(1,1), 0, 0, 0, 0; 0, 1/S(2,2), 0, 0, 0; 0, 0, 1/S(3,3), 0, 0; 0, 0, 0, 1/S(4,4), 0;0, 0, 0, 0, 1/S(5,5); 0, 0, 0, 0, 0];
    Spos=round(Spos);
    PinvJ= V*Spos'*U';
    JointVelocity= PinvJ*(EndEffectorVelocity);
else
    JointVelocity=pinv(J)*(EndEffectorVelocity);
end