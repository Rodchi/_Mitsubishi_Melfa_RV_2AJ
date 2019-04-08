%{
This program connectcs to a Serial interface using the COM-port
of the computer

punto cero
1;1;EXECP5 = (-44.54,-212.11,430.09,173.86,179.29,0.00)(6,0)');
fprintf (puerto_melfa, 13);

%}

function Serial_Port(x)

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

fprintf (puerto_melfa, '1;1;SRVOFF'); 
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

fclose(puerto_melfa);

end
