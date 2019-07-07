clc;
close all;
clear;
u0 = 0.4*pi*10^-7;
Nt = 100;
a = 0.5;          %m
I = 5;         %A
ta = 0:pi/20:2*pi;

r = 10; %m
Br = ( (u0*Nt*(a^2)*I)/(2*(r^3)) ) * cos(ta);
Bta = ( (u0*Nt*a^2*I)/(4*r^3) ) * sin(ta);
B = sqrt(Br.^2 + Bta.^2);
polar(ta,B,'<-'); 
hold on;

r = 12;
Br = ( (u0*Nt*(a^2)*I)/(2*(r^3)) ) * cos(ta);
Bta = ( (u0*Nt*a^2*I)/(4*r^3) ) * sin(ta);
B = sqrt(Br.^2 + Bta.^2);
polar(ta,B,'<-');
hold on;

r = 14;
Br = ( (u0*Nt*(a^2)*I)/(2*(r^3)) ) * cos(ta);
Bta = ( (u0*Nt*a^2*I)/(4*r^3) ) * sin(ta);
B = sqrt(Br.^2 + Bta.^2);
hold on;
polar(ta,B,'<-');

r = 16;
Br = ( (u0*Nt*(a^2)*I)/(2*(r^3)) ) * cos(ta);
Bta = ( (u0*Nt*a^2*I)/(4*r^3) ) * sin(ta);
B = sqrt(Br.^2 + Bta.^2);
hold on;
polar(ta,B,'<-');

r = 18;
Br = ( (u0*Nt*(a^2)*I)/(2*(r^3)) ) * cos(ta);
Bta = ( (u0*Nt*a^2*I)/(4*r^3) ) * sin(ta);
B = sqrt(Br.^2 + Bta.^2);
hold on;
polar(ta,B,'<-');

r = 20;
Br = ( (u0*Nt*(a^2)*I)/(2*(r^3)) ) * cos(ta);
Bta = ( (u0*Nt*a^2*I)/(4*r^3) ) * sin(ta);
B = sqrt(Br.^2 + Bta.^2);
hold on;
polar(ta,B,'<-');

grid on;
title('Magnetic Field Strength');
legend('10 m', '12 m', '14 m', '16 m', '18 m', '20 m');