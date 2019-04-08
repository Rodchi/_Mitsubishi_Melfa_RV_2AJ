function [P1,P2,P3,P4]=getrectangle(Side)

alpha=173.86;
beta=179.29;

P0x=-74.54;
P0y=-212.11;
P0z=353.82;

P1x=P0x;
P1y=P0y-Side;
P1z=P0z;

P2x=P0x+Side;
P2y=P1y;
P2z=P0z;

P3x=P2x;
P3y=P0y;
P3z=P0z;

        alpha=num2str(alpha);
        beta=num2str(beta);
        P0x = num2str(P0x);
        P0y = num2str(P0y);
        P0z = num2str(P0z);
        
        P1x = num2str(P1x);
        P1y = num2str(P1y);
        P1z = num2str(P1z);
        
        P2x = num2str(P2x);
        P2y = num2str(P2y);
        P2z = num2str(P2z);
        
        P3x = num2str(P3x);
        P3y = num2str(P3y);
        P3z = num2str(P3z);
       
        inicioP1 = '1;1;EXECP1=(';
        fin = '0.00)(6,0)';
        P1 = strcat(inicioP1,P0x,',',P0y,',',P0z,',',alpha,',',beta,',',fin);
        
        inicioP2 = '1;1;EXECP2=(';
        fin = '0.00)(6,0)';
        P2 = strcat(inicioP2,P1x,',',P1y,',',P1z,',',alpha,',',beta,',',fin);

        inicioP3 = '1;1;EXECP3=(';
        fin = '0.00)(6,0)';
        P3 = strcat(inicioP3,P2x,',',P2y,',',P2z,',',alpha,',',beta,',',fin);

        inicioP4 = '1;1;EXECP4=(';
        fin = '0.00)(6,0)';
        P4 = strcat(inicioP4,P3x,',',P3y,',',P3z,',',alpha,',',beta,',',fin);

end