function []=FKen(x,y,z,a,b)
        Ox = x;
        Oy = y;
        Oz = z;
        ap = a;
        bp = b;
                
       
        Ox = num2str(Ox);
        Oy = num2str(Oy);
        Oz = num2str(Oz);
        ap = num2str(ap);
        bp = num2str(bp);
        
        fid = fopen('PuntosFKen.txt','wt');
        inicioP1 = '1;1;CNTLON \n 1;1;SRVON \n 1;1;OVRD=10 \n 1;1;EXECP1=(';
        fin = ',0.00)(6,0)\n 1;1;EXECMOV P1';
        P = strcat(inicioP1,Ox,',',Oy,',',Oz,',',ap,',',bp,',',fin,'\n');
        fprintf(fid,P);
        fclose(fid);       
           
        fid = fopen('PuntosFKen.POS','wt');
        inicioP1 = '1;1;CNTLON \n 1;1;SRVON \n 1;1;OVRD=10 \n 1;1;EXECP1=(';
        fin = ',0.00)(6,0)\n 1;1;EXECMOV P1';
        P = strcat(inicioP1,Ox,',',Oy,',',Oz,',',ap,',',bp,',',fin,'\n');
        fprintf(fid,P);
        fclose(fid);
  
end
    %Este código mueve al robot hasta que cada uno de sus 6 joints alcance el ángulo de giro específicado en J1.
	%El comando EXECJ1 define el ángulo deseado para cada una de las articulaciones (J1,J2,J3,0.000,J5,J6).
	%El comando EXECMOV J1 le dice al robot que debe mover sus articulaciones a los ángulos especificados por J1.