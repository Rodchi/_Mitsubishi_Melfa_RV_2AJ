function  temp3(x,step,side)
%end effector angles
alpha=173.86;
beta=179.29;

%punto 1
P1x=-74.54+side;
P1y=-212.11-side;
P1z=353.82;

%punto 2
%P2x=P1x;
%P2y=P1y-side;
%P2z=P1z;



%steps
dist=side
step_dist=0;

%string convertion

alpha=num2str(alpha);
beta=num2str(beta);


P1x = num2str(P1x);
P1z = num2str(P1z);

inicioP1 = '1;1;EXECP1=(';
fin = '0.00)(6,0)';



str = sprintf(x);
%%instrfind({'port'},{str});
puerto= serial(str);

fopen(puerto);


step_dist2=0;
%first point
for i=0:1:step
    
    P1y_temp = P1y+step_dist2;
    step_dist2 = step_dist2 + dist/step;
    P1y_str = num2str(P1y_temp);
    P1 = strcat(inicioP1,P1x,',',P1y_str,',',P1z,',',alpha,',',beta,',',fin);
    fprintf(puerto,P1);
    fprintf (puerto,13);
    fprintf(puerto,'1;1;EXECMOV P1');
    fprintf (puerto,13);
    pause on
    pause (1.5);
    
    temp=i
    
end


fclose(puerto);


end