function [error, theta1, theta2, theta3, theta5, theta6] = melfa_invk(x, y, z, alpha, beta)

error = 0;
alpha=deg2rad(alpha);
beta=deg2rad(beta);
%Valores fijos del robot
L1=300;
L2=250;
L3=160;
L4=72;
%Calcular theta 1 con Px y Py
theta1=atan2(y,x);
%C?lculo de la hipotenusa del triangulo de Px, Py y r
r=sqrt(((x)^2)+((y)^2));
%C?lculo del ?ngulo del ?ltimo tramo del melfa respecto a la horizontal. 
AnguloHorizontal=-(beta)+(pi/2);
a=L4*cos(AnguloHorizontal);
b=L4*sin(AnguloHorizontal);
%Calculo del triangulo interior para ley de cosenos
c=sqrt(((r-a)^2)+((z-(b)-L1)^2));
cosC=((L2^2)+(L3^2)-(c^2))/(2*L2*L3);
if abs(cosC) > 1
    error = 1;
    theta1 = 0;
    theta2 = 0;
    theta3 = 0;
    theta5 = 0;
    theta6 = 0;
    return;
end
senC=sqrt(1-((cosC)^2));
%Calculo de theta 3 
theta3=pi-(atan2(senC,cosC));
%Calculo de angulos complementarios de theta 2, gamma y A
gamma=atan2((z-(b)-L1),(r-a));
senA=(L3*senC)/c;
cosA=sqrt(1-((senA)^2));
%Calculo de theta 2 = (90-gamma-A)
theta2=(pi/2)-atan2(senA,cosA)-gamma;
%Calculo de theta 5 = (beta-theta2-theta3)
theta5=beta-theta2-theta3;
%Calculo de theta 6
theta6=alpha-(theta1*cos(beta));
%Conversi?n de angulos a grados
theta1=rad2deg(theta1);
theta2=rad2deg(theta2);
theta3=rad2deg(theta3);
theta5=rad2deg(theta5);
theta6=rad2deg(theta6);

if(theta1 > 150)
    error = 1;
    return;
elseif(theta1 <-150)
    error = 1;
    return;
end

if(theta2 > 120)
    error = 1;
    return;
elseif(theta2 <-60)
    error = 1;
    return;
end

if(theta3 > 120)
    error = 1;
    return;
elseif(theta3 <-110)
    error = 1;
    return;
end

if(theta5 > 90)
    error = 1;
    return;
elseif(theta5 <-90)
    error = 1;
    return;
end

if(theta6 > 200)
    error = 1;
    return;
elseif(theta6 <-200)
    error = 1;
    return;
end

end