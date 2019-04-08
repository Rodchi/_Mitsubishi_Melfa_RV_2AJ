function Serial_Port_OK(x)

str = sprintf(x);

instrfind({'port'},{str});
puerto_melfa = serial(str);


puerto_melfa.BaudRate = 9600;
puerto_melfa.Terminator = 'CR';
puerto_melfa.DataBits = 8;
puerto_melfa.Parity = 'none';
puerto_melfa.StopBits = 1;

fopen(puerto_melfa);

fprintf (puerto_melfa, '1;1;CNTLON');
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)

fprintf (puerto_melfa, '1;1;SRVON'); 
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)

fprintf (puerto_melfa, '1;1;OVRD=10');
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)

%{
fprintf (puerto_melfa, '1;1;EXECHOPEN 1');
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)
%}

fprintf (puerto_melfa, '1;1;EXECHCLOSE 1');
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)

pause on;
pause(3);


fprintf(puerto_melfa,'1;1;EXECP1 = (-74.54,-212.11,352.09,173.86,179.29,0.00)(6,0)');
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)

pause on;
pause(3);


fprintf(puerto_melfa,'1;1;EXECP2 = (-74.54,-242.11,352.09,173.86,179.29,0.00)(6,0)');
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)

pause on;
pause(3);

fprintf(puerto_melfa,'1;1;EXECP3 = (-44.54,-242.11,352.09,173.86,179.29,0.00)(6,0)');
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)

pause on;
pause(3);

fprintf(puerto_melfa,'1;1;EXECP4 = (-44.54,-212.11,352.09,173.86,179.29,0.00)(6,0)');
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)

pause on;
pause(3);

fprintf (puerto_melfa, '1;1;EXECMOV P1');
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)

pause on;
pause(3);


fprintf (puerto_melfa, '1;1;EXECMOV P2');
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)

pause on;
pause(3);

fprintf (puerto_melfa, '1;1;EXECMOV P3');
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)

pause on;
pause(3);

fprintf (puerto_melfa, '1;1;EXECMOV P4');
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)

pause on;
pause(3);

fprintf (puerto_melfa, '1;1;EXECMOV P1');
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)



fclose(puerto_melfa);
end