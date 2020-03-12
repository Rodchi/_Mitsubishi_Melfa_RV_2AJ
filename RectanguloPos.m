function [P1,P2,P3,P4]=RectanguloPos(H,W)
        Pox = -66.60;
        Poy = -278.78;
        Poz = 279.62;
        Pa = -4.88;
        Pb = 176.48;
        
        
        P1x = Pox;
        P1y = Poy;
         
        P2x = Pox;
        P2y = Poy + H;
        P3x = Pox - W;
        P3y = P2y;
        P4x = P3x;
        P4y = P3y - H;
                
        P1x = num2str(P1x);
        P1y = num2str(P1y);
        P2x = num2str(P2x);
        P2y = num2str(P2y);
        P3x = num2str(P3x);
        P3y = num2str(P3y);
        P4x = num2str(P4x);
        P4y = num2str(P4y);
        Poz = num2str(Poz);
        Pa = num2str(Pa);
        Pb = num2str(Pb);
        
%         fid = fopen('PuntosRect.txt','wt');
        inicioP1 = '1;1;EXECP1=(';
        fin = '0.00)(6,0)';
        P1 = strcat(inicioP1,P1x,',',P1y,',',Poz,',',Pa,',',Pb,',',fin);

        inicioP2 = '1;1;EXECP2=(';
        fin = '0.00)(6,0)';
        P2 = strcat(inicioP2,P2x,',',P2y,',',Poz,',',Pa,',',Pb,',',fin);

        inicioP3 = '1;1;EXECP3=(';
        fin = '0.00)(6,0)';
        P3 = strcat(inicioP3,P3x,',',P3y,',',Poz,',',Pa,',',Pb,',',fin);

        inicioP4 = '1;1;EXECP4=(';
        fin = '0.00)(6,0)';
        P4 = strcat(inicioP4,P4x,',',P4y,',',Poz,',',Pa,',',Pb,',',fin);

        
end