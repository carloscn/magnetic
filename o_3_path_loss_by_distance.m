r_d = 1:2:50;
at = 0.5;
ar = 0.5;
Nt = 100;
Nr = 100;
L_r = -(6.02 + 10*log(Nt/(Nr*(at^3)*(ar^3))) + 60.*log(r_d));
figure(1)
plot(r_d, L_r,'r->','lineWidth',2);
hold on;

at = 1;
ar = 1;
Nt = 100;
Nr = 100;
L_r = -(6.02 + 10*log(Nt/(Nr*(at^3)*(ar^3))) + 60.*log(r_d));
plot(r_d, L_r,'b->','lineWidth',2);
hold on;

at = 2;
ar = 2;
Nt = 100;
Nr = 100;
L_r = -(6.02 + 10*log(Nt/(Nr*(at^3)*(ar^3))) + 60.*log(r_d));
plot(r_d, L_r,'g->','lineWidth',2);
hold on;

title('Diagram For Path Loss');
xlabel('Distance(m)','Fontname', 'Times New Roman','FontSize',14);
ylabel('Path Loss(-dB)','Fontname', 'Times New Roman','FontSize',14);
grid on;
legend('radius = 0.5m' ,'radius = 1m', 'radius = 2m' );