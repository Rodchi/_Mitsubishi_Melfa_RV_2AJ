function go_home(puerto)
str = sprintf(puerto);
%%instrfind({'port'},{str});
puerto= serial(str);

puerto.BaudRate = 9600;
puerto.Terminator = 'CR';
puerto.DataBits = 8;
puerto.Parity = 'none';
puerto.StopBits = 1;

fopen(puerto);

fprintf(puerto,'1;1;EXECP50= (-44.54,-212.11,430.09,173.86,179.29,0.00)(6,0)');
fprintf (puerto, 13);
%temp = fgets(puerto)

%pause on;
%pause(3);

fprintf (puerto, '1;1;EXECMOV P50');
fprintf (puerto, 13);
temphome = fgets(puerto)


fclose(puerto);
end