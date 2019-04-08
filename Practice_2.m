%{
practica 2


1;1;CNTLON //TURNS ON CONTROLLER
1;1;SRVON TURNS ON SERVOMOTOR
1;1;OVRD=10
1;1;EXECP1=(180.56,-149.45,487.52,147.2,157.95) (6,0) 
1;1;EXECMOV P1
%}

clc
clear all
x = 'COM30';
Open = 0; 
Close = 1;


%línea
%{
Open_serial(x)
go_home(x)
temp(COM,STEPS,SIDELEGTH)
temp(x,5,90)
%}


%{
CUADRADO
Open_serial(x)
go_home(x)

temp(COM,STEPS,SIDELEGTH)
temp(x,5,90)

temp(x,5,90)
temp2(x,5,90) %make a line temp(step,sizeofside)
temp3(x,5,90)
temp4(x,5,90)
go_home(x)

%}


Open_serial(x)
go_home(x)
%grip_state(x,Open)
temp(x,5,90)
temp2(x,5,90) %make a line temp(step,sizeofside)
temp3(x,5,90)
temp4(x,5,90)
go_home(x)
%[P1,P2,P3,P4]=getrectangle(30);

%serial_send(x,P1);
%serial_send(x,P2);
%serial_send(x,P3);
%serial_send(x,P4);


