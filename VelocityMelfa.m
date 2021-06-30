function [EndEffectorVelocity, J] = VelocityMelfa(theta1,theta2,theta3,theta5,theta6,JointVelocity)

J=JacobianMelfa(theta1,theta2,theta3,theta5,theta6);
EndEffectorVelocity=J*JointVelocity;
end