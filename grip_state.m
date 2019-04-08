function grip_state(serial_port, state)

if(state == 0)

str = sprintf(serial_port);
instrfind({'port'},{str});
puerto_melfa = serial(str);
puerto_melfa.BaudRate = 9600;
puerto_melfa.Terminator = 'CR';
puerto_melfa.DataBits = 8;
puerto_melfa.Parity = 'none';
puerto_melfa.StopBits = 1;

fopen(puerto_melfa);

fprintf(puerto_melfa, '1;1;EXECHOPEN 1');
fprintf(puerto_melfa, 13);
temp = fgets(puerto_melfa)

fclose(puerto_melfa);


elseif(state ==1)

str = sprintf(serial_port);
instrfind({'port'},{str});
puerto_melfa = serial(str);
puerto_melfa.BaudRate = 9600;
puerto_melfa.Terminator = 'CR';
puerto_melfa.DataBits = 8;
puerto_melfa.Parity = 'none';
puerto_melfa.StopBits = 1;

fopen(puerto_melfa);

fprintf(puerto_melfa, '1;1;EXECHCLOSE 1');
fprintf(puerto_melfa, 13);
temp = fgets(puerto_melfa)

fclose(puerto_melfa);

else
    mistake='ERROR'

end



end