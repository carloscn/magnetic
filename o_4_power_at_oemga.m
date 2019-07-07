u0 = 0.4*pi*10^-7;
Nt = 100;
Nr = 100;
a = 2;
r = 2;
r_d = 0:2:50;
M = (u0 * pi * Nt * Nr * a^4) / ( 2 * ( sqrt(r^2 + a^2) ^3) );
M_d = (0.5 * u0 * pi * Nt * Nr * a^4) ./ ( ( sqrt(r_d.^2 + a^2).^3 ) );

R_L = 1000;
R_L_1 = 3.14; 
R_L_2 = 3.14;
R_s = 9;
C = 1.8*10^-7;
L = 5.46*10^-3;
f_k = 2*pi*10;
f = 0:0.1:1000;
U_0 = 10;
omg = (2*pi).*f;
P_omg =  10 * log10( U_0^2 * ( (f_k*f_k)/(2*R_L_2*(R_L_1+R_s)^2) ) * ( M_d.^2) );

figure(1)
plot(r_d, P_omg,'r->','lineWidth',2);
hold on;
f_k = 2*pi*50;
omg = (2*pi).*50;
M = (u0 * pi * Nt * Nr * a^4) / ( 2 * ( sqrt(r^2 + a^2) ^3) );
M_d = (0.5 * u0 * pi * Nt * Nr * a^4) ./ ( ( sqrt(r_d.^2 + a^2).^3 ) );
P_omg =  10 * log10( U_0^2 * ( (f_k*f_k)/(2*R_L_2*(R_L_1+R_s)^2) ) * ( M_d.^2) );
plot(r_d, P_omg,'b->','lineWidth',2);

grid on;
hold on;
Nt = 100;
Nr = 100;
a = 2;
r = 25;
M = (u0 * pi * Nt * Nr * a^4) / ( 2 * ( sqrt(r^2 + a^2) ^3) );
M_d = (0.5 * u0 * pi * Nt * Nr * a^4) ./ ( ( sqrt(r_d.^2 + a^2).^3 ) );
f_k = 2*pi*100;
omg = (2*pi).*100;
P_omg =  10 * log10( U_0^2 * ( (f_k*f_k)/(2*R_L_2*(R_L_1+R_s)^2) ) * ( M_d.^2) );
plot(r_d, P_omg,'g->','lineWidth',2);


grid on;
title('Diagram For Received Power');
legend('Received Power');
xlabel('Distance(m)','Fontname', 'Times New Roman','FontSize',14);
ylabel('Received Power in dBm','Fontname', 'Times New Roman','FontSize',14);
legend('10 Hz', '50 Hz', '100 Hz');