function [J,A_1,A_2,A_3,A_4,A_5] = JacobianMatrixMelfa(th1,th2,th3,th5,th6)

th1 = degtorad(th1);
th2 = degtorad(th2);
th3= degtorad(th3);
th5 = degtorad(th5);
th6 = degtorad(th6);

A1 = Transf_MatrixA (th1,300,0,pi/2);
A2 = Transf_MatrixA (th2,0,250,pi/2);
%A2 = Transf_MatrixA (th2-pi/2,0,250,-pi/2);

A3 = Transf_MatrixA (th3,160,0,pi/2); 
%A4 = Transf_MatrixA (th5 + pi/2,0,0,pi/2);
A4 = Transf_MatrixA (th5,72,0,0);
A5 = Transf_MatrixA (th6,0,0,pi/2);

A_1=A1;
A_2=A2;
A_3=A3;
A_4=A4;
A_5=A5;

T0_1=A1;
T0_2=A1*A2;
T0_3=A1*A2*A3;
T0_4=A1*A2*A3*A4;
T0_5=A1*A2*A3*A4*A5;

z0 = [0;0;1];
z1 = T0_1(1:3,3); %elementos de x a y, columna
z2 = T0_2(1:3,3);
z3 = T0_3(1:3,3);
z4 = T0_4(1:3,3);

o_0=[0;0;0];
o_1=[T0_1(1:3,4)];
o_2=[T0_2(1:3,4)];
o_3=[T0_3(1:3,4)];
o_4=[T0_4(1:3,4)];
o_5=[T0_5(1:3,4)];


J1=([cross(z0,(o_5-o_0));z0]);
J2=([cross(z1,(o_5-o_1));z1]);
J3=([cross(z2,(o_5-o_2));z2]);
J4=([cross(z3,(o_5-o_3));z3]);
J5=([cross(z4,(o_5-o_4));z4]);

J = [J1 J2 J3 J4 J5];

end

