function [Ai] = A_Matrix(theta,d,a,alpha)

% This function finds the Denavit-Hartenberg Homogeneous Transformation Matrix 
% given the angles and distances from Z and X .

constth = isnumeric(theta);
constd = isnumeric(d);
consta = isnumeric(a);
constal = isnumeric(alpha);


if constth == 0 && constd == 0 && consta == 1 && constal == 1
    a = sym(a);
    consta = 0;
    alpha = sym(alpha);
    constal = 0;
end
if constth == 0 && constd == 1 && consta == 1 && constal == 1
    d = sym(d);
    constd = 0;
    a = sym(a);
    consta = 0;
    alpha = sym(alpha);
    constal = 0;
end
if constth == 0 && constd == 1 && consta == 0 && constal == 1
    d = sym(d);
    constd = 0;
    alpha = sym(alpha);
    constal = 0;
end
if constth == 0 && constd == 1 && consta == 0 && constal == 1
    d = sym(d);
    constd = 0;
    alpha = sym(alpha);
    constal = 0;
end
if constth == 0 && constd == 0 && consta == 0 && constal == 1
    alpha = sym(alpha);
    constal = 0;
end
if constth == 1 && constd == 1 && consta == 0 && constal == 1
    theta = sym(theta);
    constth = 0;
    d = sym(d);
    constd = 0;
    alpha = sym(alpha);
    constal = 0;
end
if constth == 1 && constd == 1 && consta == 0 && constal == 0
    theta = sym(theta);
    constth = 0;
    d = sym(d);
    constd = 0;
end
if constth == 1 && constd == 0 && consta == 0 && constal == 0
    theta = sym(theta);
    constth = 0;
end
if constth == 0 && constd == 1 && consta == 0 && constal == 0
    d = sym(d);
    constd = 0;
end
if constth == 0 && constd == 0 && consta == 1 && constal == 0
    a = sym(a);
    consta = 0;
end
if constth == 1 && constd == 0 && consta == 0 && constal == 1
    theta = sym(theta);
    constth = 0;
    alpha = sym(alpha);
    constal = 0;
end
if constth == 1 && constd == 1 && consta == 1 && constal == 0
    theta = sym(theta);
    constth = 0;
    d = sym(d);
    constd = 0;
    a = sym(a);
    consta = 0;
end
if constth == 1 && constd == 0 && consta == 1 && constal == 1
    theta = sym(theta);
    constth = 0;
    a = sym(a);
    consta = 0;
    alpha = sym(alpha);
    constal = 0;
end
if constth == 1 && constd == 0 && consta == 1 && constal == 0
    theta = sym(theta);
    constth = 0;
    a = sym(a);
    consta = 0;
end
if constth == 0 && constd == 1 && consta == 1 && constal == 0
    d = sym(d);
    constd = 0;
    a = sym(a);
    consta = 0;
end
if constth == 0 && constd == 0 && consta == 0 && constal == 0 %ALL NUMERIC
%     cos(90)=0;
%     sin(90)=1;
%     sin(-90)=-1;
%     cos(-90)=0;
alpha=alpha*pi/180;
% theta=theta*pi/180;
    Ai = simplify([cos(theta), -sin(theta)*cos(alpha) ,sin(theta)*sin(alpha) ,a*cos(theta);sin(theta) ,cos(theta)*cos(alpha) ,-cos(theta)*sin(alpha) ,a*sin(theta);0, sin(alpha), cos(alpha), d;0, 0, 0, 1]);
end
if constth == 1 && constd == 1 && consta == 1 && constal == 1 %ALL VARIABLES
    theta_rad = theta*pi/180;
    alpha_rad = alpha*pi/180;
    Ai = [cos(theta_rad), -sin(theta_rad)*cos(alpha_rad), sin(theta_rad)*sin(alpha_rad), a*cos(theta_rad);sin(theta_rad), cos(theta_rad)*cos(alpha_rad), -cos(theta_rad)*sin(alpha_rad), a*sin(theta_rad);0, sin(alpha_rad), cos(alpha_rad), d;0 0 0 1];
end
end