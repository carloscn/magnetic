nt = 100;
nr = 100;
at = 1;
ar = 1;

%pr = (nr*(at^3)*(ar^3))/(4*nr*r^6);

r = 0:1:250;

lr = 6.02 + 60 * log10(r) + 10* log10(nt/(nt*(at^3)*(ar^3)));
srn  = pr
plot (lr)