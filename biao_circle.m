clear all;
clc;
%参数设定
r=1;%单位长度 1
I=1;%单位电流
u0=1;%毕奥萨法尔公式中需要用到的真空磁导率，由于是画示意图，所以取 1 即可
PI=3.14;%π
C0=u0*I/(4*PI); %毕奥萨法尔公式的系数
m=100;%把一个圆形分成 100 段进行积分
t=2.*PI/m;%对弧度进行划分
n=0:(m-1);
%坐标设定
Px=-.5:0.05:.5;
Py=-.5:0.05:.5;
[X,Y]=meshgrid(Px,Py);%在 xy 平面上得到需要作图的区域点
l=length(Px);
Pz=ones(1,l);
Pz=40.*Pz; %这里定义高度
x=r.*cos(n.*t); %画出 Z=0 平面的圆形的各个坐标点
y=r.*sin(n.*t);
z=zeros(1,m);
dl(1,m)=struct('x',[],'y',[],'z',[]); %新建存放 dl 的结构体
%求出 dl
for i = 1:m
    j=mod(i,m);
    dl(i).x=x(j+1)-x(i);
    dl(i).y=y(j+1)-y(i);
    dl(i).z=0;
end
SumBx=zeros(1,l.*l);
SumBy=zeros(1,l.*l);
SumBz=zeros(1,l.*l);%求和得到的各个点的场强值放在这里
temp=1; %用来计数求出每个点的场强值
for i = 1:l
    for j=1:l
        for k = 1:m
            a=[dl(k).x dl(k).y dl(k).z];
            
            b=[Px(i)-x(k) Py(j)-y(k) Pz(i)-z(k)];
            Rmod=sqrt(sum(abs([Px(i)-x(k) Py(j)-y(k) Pz(i)-z(k)]).^2));
            dB=C0.*cross(a,b)/(Rmod.^3);
            SumBx(temp) = SumBx(temp)+dB(1);
            SumBy(temp) = SumBy(temp)+dB(2);
            SumBz(temp) = SumBz(temp)+dB(3);
            
        end
        temp=temp+1;
        
    end
    
end
SumBz=reshape(SumBz,l,l);
mesh(Px,Py,SumBz)