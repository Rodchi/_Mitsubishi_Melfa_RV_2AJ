%Prueba de conexion con melfa

%suponiendo que se encuentra conectado en el puerto 6
instrfind({'port'},{'COM7'}); %eliminando rastros de conexiones pasadas
puerto_melfa = serial('COM7'); %declarando el puerto

%configurando puerto
puerto_melfa.BaudRate = 9600;
puerto_melfa.Terminator = 'CR';
puerto_melfa.DataBits = 8;
puerto_melfa.Parity = 'none';
puerto_melfa.StopBits = 1;

fopen(puerto_melfa);%abriendo puerto

fprintf (puerto_melfa, '1;1;CNTLON'); %inicia soft-control.. creo
fprintf (puerto_melfa, '');

fprintf (puerto_melfa, '1;1;SRVON'); %enciende el servox (debe sonar)
fprintf (puerto_melfa, '');

P=invFinal
fprintf(puerto_melfa,'1;1;EXECP1=(76.7673,14.2834,701.1515,-1.7473,96.14,,0.00)(6,0)');%crea la posicion deseada
fprintf (puerto_melfa, '');


fprintf (puerto_melfa, '1;1;EXECMOV P1');%se mueve a la posiscion p1
fprintf (puerto_melfa, '');




fclose(puerto_melfa);