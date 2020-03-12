function [P]=invFinal(theta1,theta2,theta3,theta5,theta6)
        th1 = theta1;
        th2 = theta2;
        th3 = theta3;
        th5 = theta5;
        th6 = theta6;       
       
        th1 = num2str(th1);
        th2 = num2str(th2);
        th3 = num2str(th3);
        th5 = num2str(th5);
        th6 = num2str(th6);
        
        fid = fopen('PuntosIKen.txt','wt');
        inicioP1 = '1;1;CNTLON \n 1;1;SRVON \n 1;1;OVRD=10 \n 1;1;EXECJ1=(';
        fin = '0.00) \n 1;1;EXECMOV J1';
        P = strcat(inicioP1,th1,',',th2,',',th3,',','0.000',',',th5,',',th6,',',fin,'\n');
        fprintf(fid,P);
        fclose(fid);       
           
        fid = fopen('PuntosIKen.POS','wt');
        inicioP1 = '1;1;CNTLON \n 1;1;SRVON \n 1;1;OVRD=10 \n 1;1;EXECJ1=(';
        fin = '0.00) \n 1;1;EXECMOV J1';
        P = strcat(inicioP1,th1,',',th2,',',th3,',','0.000',',',th5,',',th6,',',fin,'\n');
        fprintf(fid,P);
        fclose(fid);
end
        
    %Este código mueve al robot hasta que cada alcanza las coordenadas X,Y,Z,A,B específicadas en P1.
	%El comando EXECP1 define las coordenadas finales deseadas para el robot (X,Y,Z,A,B).
	%El comando EXECMOV P1 le dice al robot que debe mover sus efector final para alcanzar las coordenadas especificadas por P1.