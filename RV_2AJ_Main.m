%{
This is the main program that control the Mitsubishi Melfa
RV-2AJ robotic arm


inverseken & forwardken test point

inverseken(-74.55,-232.81,323.81,173.86,179.29)=  -107.7560   32.1796  104.1809   42.9295   66.1123
forwardken(-107.7560,32.1796,104.1809,42.9295,66.1123) = -74.5500 -232.8100  323.8098  173.8600  179.29


%}
clc
clear all

x = 'COM21';
%%Serial_Port(x);
invken = inverseken(-74.55,-232.81,323.81,173.86,179.29);
forwken = forwardken(-107.75,32.17,104.18,42.92,66.11);

invstr= vectostr(invken)
forwstr=vectostr(forwken)


