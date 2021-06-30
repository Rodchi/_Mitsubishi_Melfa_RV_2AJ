function ArticuledManipulator_Ik(H)
d1=1;
d2=1;
d3=1;
d6=1;
R=[H(1,1) H(1,2) H(1,3);H(2,1) H(2,2) H(2,3);H(3,1) H(3,2) H(3,3)]
o=[H(1,4) H(2,4) H(3,4)]'
oc=[(o(1,1)-(d6*R(1,3))) (o(2,1)-(d6*R(2,3))) (o(3,1)-(d6*R(3,3)))]'
xc=oc(1,1)
yc=oc(2,1)
zc=oc(3,1)
s=zc-d1;
r=sqrt((xc^2)+(yc^2));
%Calculation of q31 q32 is for below arm configuration and q31 is for
%above arm configuration.
cq3= ((r^2)+(s^2)-(d2^2)-(d3^2))/(2*d2*d3);
sq32= sqrt((1-(cq3^2)));
sq31= -sqrt((1-(cq3^2)));
q31= (atan2(sq31,cq3));
q32= (atan2(sq32,cq3));
q33=-q31;
q34=-q32;
%Calculation of q21 q22 is for below arm configuration and q21 is for
%above arm configuration.
sphi22=((d3*sq32)/sqrt((r^2)+(s^2)));
sphi21=((d3*sq31)/sqrt((r^2)+(s^2)));
cphi2=((r^2)+(s^2)+(d2^2)-(d3^2))/(2*sqrt((r^2)+(s^2))*d2);
psi=atan2(y,x);
phi22=atan2(sphi22,cphi2);
phi21=atan2(sphi21,cphi2);
q21= (psi-phi21);
q22= (psi-phi22);
q23= (180-q21);
q24= (180-q22);
q11= (atan(yc,xc));
q12= (atan(yc,xc))+180;

R031=[(cos(q11)*cos(q21+q31)) -(cos(q11)*sin(q21+q31)) sin(q11); 
    (sin(q11)*cos(q21+q31)) -(sin(q11)*sin(q21+q31)) -cos(q11);
    -sin(q21+q31) cos(q21+q31) 0];

R361= R031'*R;

if (R361(1,3) == 0) & (R361(2,3) == 0);
    fprintf('\nCase 2: R(1,3) and R(2,3) are both equal zero\n')
    theta1=0;
    phi1=0;
    psi1=rad2deg(atan2(-R361(1,2),R361(1,1)));
    fprintf('\nFor R(3,3)= 1 the angles are Z1=%1$i Y1=%2$i Z2=%3$i',phi1,theta1,psi1)
    fprintf('\n\n')
    theta2=rad2deg(pi);
    phi2=0;
    psi2=rad2deg(atan2(-R361(1,1),-R361(1,2)));
    fprintf('For R(3,3)= -1 the angles are Z1=%1$i Y1=%2$i Z2=%3$i\n',phi2,theta2,psi2)
else
    fprintf('\nCase 1: R(1,3) and R(2,3) are not simultaneously equal to zero\n')
    theta1=rad2deg(atan2((sqrt(1-(R361(3,3)^2))),(R361(3,3))));
    phi1=rad2deg(atan2(R361(2,3),R361(1,3)));
    psi1=rad2deg(atan2(R361(3,2),-R361(3,1)));
    fprintf('\nFor theta= atan2(sqrt(...)) the angles are Z1=%1$i Y1=%2$i Z2=%3$i',phi1,theta1,psi1)
    fprintf('\n\n')
    theta2=rad2deg(atan2(-(sqrt(1-(R361(3,3)^2))),(R361(3,3))));
    phi2=rad2deg(atan2(-R361(2,3),-R361(1,3)));
    psi2=rad2deg(atan2(-R361(3,2),R361(3,1)));
    fprintf('For theta= atan2(-sqrt(...)) the angles are Z1=%1$i Y1=%2$i Z2=%3$i\n',phi2,theta2,psi2)
end

R032=[(cos(q11)*cos(q22+q32)) -(cos(q11)*sin(q22+q32)) sin(q11); 
    (sin(q11)*cos(q22+q32)) -(sin(q11)*sin(q22+q32)) -cos(q11);
    -sin(q22+q32) cos(q22+q32) 0]

R362= R032'*R;

if (R362(1,3) == 0) & (R362(2,3) == 0);
    fprintf('\nCase 2: R(1,3) and R(2,3) are both equal zero\n')
    theta1=0;
    phi1=0;
    psi1=rad2deg(atan2(-R362(1,2),R362(1,1)));
    fprintf('\nFor R(3,3)= 1 the angles are Z1=%1$i Y1=%2$i Z2=%3$i',phi1,theta1,psi1)
    fprintf('\n\n')
    theta2=rad2deg(pi);
    phi2=0;
    psi2=rad2deg(atan2(-R362(1,1),-R362(1,2)));
    fprintf('For R(3,3)= -1 the angles are Z1=%1$i Y1=%2$i Z2=%3$i\n',phi2,theta2,psi2)
else
    fprintf('\nCase 1: R(1,3) and R(2,3) are not simultaneously equal to zero\n')
    theta1=rad2deg(atan2((sqrt(1-(R362(3,3)^2))),(R362(3,3))));
    phi1=rad2deg(atan2(R362(2,3),R362(1,3)));
    psi1=rad2deg(atan2(R362(3,2),-R362(3,1)));
    fprintf('\nFor theta= atan2(sqrt(...)) the angles are Z1=%1$i Y1=%2$i Z2=%3$i',phi1,theta1,psi1)
    fprintf('\n\n')
    theta2=rad2deg(atan2(-(sqrt(1-(R362(3,3)^2))),(R362(3,3))));
    phi2=rad2deg(atan2(-R362(2,3),-R362(1,3)));
    psi2=rad2deg(atan2(-R362(3,2),R362(3,1)));
    fprintf('For theta= atan2(-sqrt(...)) the angles are Z1=%1$i Y1=%2$i Z2=%3$i\n',phi2,theta2,psi2)
end

R033=[(cos(q12)*cos(q23+q33)) -(cos(q12)*sin(q23+q33)) sin(q12); 
    (sin(q12)*cos(q23+q33)) -(sin(q12)*sin(q23+q33)) -cos(q12);
    -sin(q23+q33) cos(q23+q33) 0]

R363= R033'*R;

if (R363(1,3) == 0) & (R363(2,3) == 0);
    fprintf('\nCase 2: R(1,3) and R(2,3) are both equal zero\n')
    theta1=0;
    phi1=0;
    psi1=rad2deg(atan2(-R363(1,2),R363(1,1)));
    fprintf('\nFor R(3,3)= 1 the angles are Z1=%1$i Y1=%2$i Z2=%3$i',phi1,theta1,psi1)
    fprintf('\n\n')
    theta2=rad2deg(pi);
    phi2=0;
    psi2=rad2deg(atan2(-R363(1,1),-R363(1,2)));
    fprintf('For R(3,3)= -1 the angles are Z1=%1$i Y1=%2$i Z2=%3$i\n',phi2,theta2,psi2)
else
    fprintf('\nCase 1: R(1,3) and R(2,3) are not simultaneously equal to zero\n')
    theta1=rad2deg(atan2((sqrt(1-(R363(3,3)^2))),(R363(3,3))));
    phi1=rad2deg(atan2(R363(2,3),R363(1,3)));
    psi1=rad2deg(atan2(R363(3,2),-R363(3,1)));
    fprintf('\nFor theta= atan2(sqrt(...)) the angles are Z1=%1$i Y1=%2$i Z2=%3$i',phi1,theta1,psi1)
    fprintf('\n\n')
    theta2=rad2deg(atan2(-(sqrt(1-(R363(3,3)^2))),(R363(3,3))));
    phi2=rad2deg(atan2(-R363(2,3),-R363(1,3)));
    psi2=rad2deg(atan2(-R363(3,2),R363(3,1)));
    fprintf('For theta= atan2(-sqrt(...)) the angles are Z1=%1$i Y1=%2$i Z2=%3$i\n',phi2,theta2,psi2)
end

R034=[(cos(q12)*cos(q24+q34)) -(cos(q12)*sin(q24+q34)) sin(q12);
    (sin(q12)*cos(q24+q34)) -(sin(q12)*sin(q24+q34)) -cos(q12);
    -sin(q24+q34) cos(q24+q34) 0]

R364= R034'*R;

if (R(1,3) == 0) & (R(2,3) == 0);
    fprintf('\nCase 2: R(1,3) and R(2,3) are both equal zero\n')
    theta1=0;
    phi1=0;
    psi1=rad2deg(atan2(-R364(1,2),R364(1,1)));
    fprintf('\nFor R(3,3)= 1 the angles are Z1=%1$i Y1=%2$i Z2=%3$i',phi1,theta1,psi1)
    fprintf('\n\n')
    theta2=rad2deg(pi);
    phi2=0;
    psi2=rad2deg(atan2(-R364(1,1),-R364(1,2)));
    fprintf('For R(3,3)= -1 the angles are Z1=%1$i Y1=%2$i Z2=%3$i\n',phi2,theta2,psi2)
else
    fprintf('\nCase 1: R(1,3) and R(2,3) are not simultaneously equal to zero\n')
    theta1=rad2deg(atan2((sqrt(1-(R364(3,3)^2))),(R364(3,3))));
    phi1=rad2deg(atan2(R364(2,3),R364(1,3)));
    psi1=rad2deg(atan2(R364(3,2),-R364(3,1)));
    fprintf('\nFor theta= atan2(sqrt(...)) the angles are Z1=%1$i Y1=%2$i Z2=%3$i',phi1,theta1,psi1)
    fprintf('\n\n')
    theta2=rad2deg(atan2(-(sqrt(1-(R364(3,3)^2))),(R364(3,3))));
    phi2=rad2deg(atan2(-R364(2,3),-R364(1,3)));
    psi2=rad2deg(atan2(-R364(3,2),R364(3,1)));
    fprintf('For theta= atan2(-sqrt(...)) the angles are Z1=%1$i Y1=%2$i Z2=%3$i\n',phi2,theta2,psi2)
end

end