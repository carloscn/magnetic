clear all;
clc;
%�����趨
r=1;%��λ���� 1
I=1;%��λ����
u0=1;%�ϰ���������ʽ����Ҫ�õ�����մŵ��ʣ������ǻ�ʾ��ͼ������ȡ 1 ����
PI=3.14;%��
C0=u0*I/(4*PI); %�ϰ���������ʽ��ϵ��
m=100;%��һ��Բ�ηֳ� 100 �ν��л���
t=2.*PI/m;%�Ի��Ƚ��л���
n=0:(m-1);
%�����趨
Px=-.5:0.05:.5;
Py=-.5:0.05:.5;
[X,Y]=meshgrid(Px,Py);%�� xy ƽ���ϵõ���Ҫ��ͼ�������
l=length(Px);
Pz=ones(1,l);
Pz=40.*Pz; %���ﶨ��߶�
x=r.*cos(n.*t); %���� Z=0 ƽ���Բ�εĸ��������
y=r.*sin(n.*t);
z=zeros(1,m);
dl(1,m)=struct('x',[],'y',[],'z',[]); %�½���� dl �Ľṹ��
%��� dl
for i = 1:m
    j=mod(i,m);
    dl(i).x=x(j+1)-x(i);
    dl(i).y=y(j+1)-y(i);
    dl(i).z=0;
end
SumBx=zeros(1,l.*l);
SumBy=zeros(1,l.*l);
SumBz=zeros(1,l.*l);%��͵õ��ĸ�����ĳ�ǿֵ��������
temp=1; %�����������ÿ����ĳ�ǿֵ
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