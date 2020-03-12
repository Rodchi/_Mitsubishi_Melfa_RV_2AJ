function [P1,P2,P3]=CirculoPos(Radio)
        Pox = -66.60;
        Poy = -278.78;
        Poz = 279.62;%335.53
        Pa = -4.88;
        Pb = 176.48;
        
        P1x = Pox;
        P1y = Poy;
        
        P2x = Pox + Radio;
        P2y = Poy;
        P3x = Pox - Radio;
        P3y = Poy;
        P4x = Pox;
        P4y = Poy + Radio;
        
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
        
%     instrfind({'port'},{'COM7'}); %eliminando rastros de conexiones pasadas
%     puerto_melfa = serial('COM7'); %declarando el puerto
% 
%     %configurando puerto
%     puerto_melfa.BaudRate = 9600;
%     puerto_melfa.Terminator = 'CR';
%     puerto_melfa.DataBits = 8;
%     puerto_melfa.Parity = 'none';
%     puerto_melfa.StopBits = 1;
% 
%     fopen(puerto_melfa);%abriendo puerto
% 
%     fprintf (puerto_melfa, '1;1;CNTLON'); %inicia soft-control.. creo
%     fprintf (puerto_melfa, '');
% 
%     fprintf (puerto_melfa, '1;1;SRVON'); %enciende el servox (debe sonar)
%     fprintf (puerto_melfa, '');

%      inicio = '1;1;EXECP1=(';
%      fin =  ',0.00)(6,0)';
%      P = strcat(inicio,Puntos,fin)
%      fprintf(puerto_melfa,P);
%      fprintf(puerto_melfa,'');
% 
%      fprintf(puerto_melfa,'1;1;EXECMOV P1');
%      fprintf(puerto_melfa,'');

        
%         fid = fopen('PuntosCirc.txt','wt');
        inicioP1 = '1;1;EXECP1=(';
        fin = '0.00)(6,0)';
        P1 = strcat(inicioP1,P2x,',',P2y,',',Poz,',',Pa,',',Pb,',',fin);
%         fprintf(fid,P);
        inicioP2 = '1;1;EXECP2=(';
        fin = '0.00)(6,0)';
        P2 = strcat(inicioP2,P3x,',',P3y,',',Poz,',',Pa,',',Pb,',',fin);
%         fprintf(fid,P);
        inicioP3 = '1;1;EXECP3=(';
        fin = '0.00)(6,0)';
        P3 = strcat(inicioP3,P4x,',',P4y,',',Poz,',',Pa,',',Pb,',',fin);
%         fprintf(fid,P);
%         fclose(fid);

end