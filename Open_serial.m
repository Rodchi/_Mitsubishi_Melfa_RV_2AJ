function Open_serial(x)

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
%temp = fgets(puerto_melfa)

fprintf (puerto_melfa, '1;1;SRVON'); 
fprintf (puerto_melfa, 13);
%temp = fgets(puerto_melfa)

fprintf (puerto_melfa, '1;1;OVRD=20');
fprintf (puerto_melfa, 13);
%temp = fgets(puerto_melfa)

%{
fprintf (puerto_melfa, '1;1;EXECHOPEN 1');
fprintf (puerto_melfa, 13);
temp = fgets(puerto_melfa)
%}

fclose(puerto_melfa);

end