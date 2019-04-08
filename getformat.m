function [format]=getformat(vector_aux)


inicioP1 = '1;1;EXECP1=(';
fin = '0.00)(6,0)';

format=strcat(inicioP1,vector_aux,',',fin);

end