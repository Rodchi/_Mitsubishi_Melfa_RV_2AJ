%{

punto cero
1;1;EXECP5 = (-44.54,-212.11,430.09,173.86,179.29,0.00)(6,0)');
fprintf (puerto_melfa, 13);

it need to have the 13 and a 3 seconds delay beetwen each mov


%}

function serial_send(puerto,message)

%1;1;CNTLON //TURNS ON CONTROLLER
%1;1;SRVON TURNS ON SERVOMOTOR
%1;1;OVRD=10
%1;1;EXECP1=(180.56,-149.45,487.52,147.2,157.95) (6,0) 
%1;1;EXECMOV P1

str = sprintf(puerto);
%%instrfind({'port'},{str});
puerto= serial(str);

%puerto.BaudRate = 9600;
%puerto.Terminator = 'CR';
%puerto.DataBits = 8;
%puerto.Parity = 'none';
%puerto.StopBits = 1;


fopen(puerto);

fprintf (puerto,message);
fprintf (puerto,13);

%pause on;
%pause(3);

%temp = fgets(puerto)
fclose(puerto);

end