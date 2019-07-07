clear all;
clc;
clear
l=1;
I=1;
u0=1;
PI=3.14;
z=0.2; 
x=-2.0:0.5:2.0;
y=-2.0:0.5:2.0;
C0=u0*I/(4*PI);
[X,Y]=meshgrid(x,y);
a=l/2+X;b=l/2-X;c=l/2+Y;d=l/2-Y;
X2=sqrt(b.^2+z.^2+d.^2);
X1=sqrt(a.^2+z.^2+d.^2);
A3z=C0*z./(X2+b)./(X1-a).*( (X1-a)./X2-(X2+b)./X1 );
A3y=C0*(-d)./(X2+b)./(X1-a).*( (X1-a)./X2-(X2+b)./X1 );

X2=sqrt(b.^2+z.^2+c.^2);
X1=sqrt(a.^2+z.^2+c.^2);
A4z=C0*z./(X2+b)./(X1-a).*( (X1-a)./X2-(X2+b)./X1 );
A4y=C0*c./(X2+b)./(X1-a).*( (X1-a)./X2-(X2+b)./X1 );


a=l/2+Y;b=l/2-Y;c=l/2+X;d=l/2-X;
X2=sqrt(b.^2+z.^2+d.^2);
X1=sqrt(a.^2+z.^2+d.^2);
A2z=C0*z./(X2+b)./(X1-a).*( (X1-a)./X2-(X2+b)./X1 );
A2x=C0*(-d)./(X2+b)./(X1-a).*( (X1-a)./X2-(X2+b)./X1 );

X2=sqrt(b.^2+z.^2+c.^2);
X1=sqrt(a.^2+z.^2+c.^2);
A1z=C0*z./(X2+b)./(X1-a).*( (X1-a)./X2-(X2+b)./X1 );
A1x=C0*c./(X2+b)./(X1-a).*( (X1-a)./X2-(X2+b)./X1 );

Z=-(A1x-A2x-A3y+A4y);

mesh(X,Y,Z);