function A = GetDHParameters(ang, d, a, alpha)

ang = sym(ang);
d = sym(d);
a = sym(a);
alpha = sym(alpha);
A = [cos(ang) -sin(ang)*cos(alpha) sin(ang)*sin(alpha) a*cos(ang);
    sin(ang) cos(ang)*cos(alpha) -cos(ang)*sin(alpha) a*sin(ang);
    0 sin(alpha) cos(alpha) d; 0 0 0 1];
simplify(A);


end