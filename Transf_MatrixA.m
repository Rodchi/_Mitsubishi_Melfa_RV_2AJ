%This is the matrix we use to get the position 

function matrixA = Transf_MatrixA (theta, d,a,alfa)
    %simbolico 'pi' 0
    
    
   %theta =degtorad(theta);
   %alfa =degtorad(alfa);

    matrixA=[cos(theta)     -sin(theta)*cos(alfa)   sin(theta)*sin(alfa)    a*cos(theta)
             sin(theta)  cos(theta)*cos(alfa)    -cos(theta)*sin(alfa)   a*sin(theta)
               0               sin(alfa)             cos(alfa)                d
               0                 0                        0                   1];
end