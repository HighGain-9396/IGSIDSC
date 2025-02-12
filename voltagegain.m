clear
clc
d=0:0.01:0.5
VFD=0.79;
VS=48;
RD=50e-3;
RL=15e-3;
RS=55e-3;
RC=10e-3;
RO1=2112.5;
RO2=3000;
RO3=845;
x1=(((4*((2.*d.*d.*d)-(9.*d.*d)+(8.*d)-1))))./((1-(2.*d)).*(d));
x2=((((-4.*d.*d.*d.*d)+(9.*d.*d)-(10.*d)+5)))./((1-(2.*d)).*(1-d).*(d));
x3=(((2*((4.*d.*d.*d.*d)-(14.*d.*d.*d)+(12.*d.*d)-(3.*d)+1))))./((1-(2.*d)).*(1-d).*(d));
x4=((8*((d.*d)-(2.*d)+(1))));
x5=(((4*((-2.*d.*d.*d.*d)+(7.*d.*d.*d)-(7.*d.*d)+d+1))))./((1-(2.*d)).*(1-d).*(d));
V0=((((2.*d.*d)-(7.*d)+5))./((1-(2.*d)).*(1-d)))
V01=((((2.*d.*d)-(7.*d)+5))-((VFD.*x4)./VS))./(((1-(2.*d)).*(1-d))+((x1.*RL)./RO1)+((x2.*RC)./RO1)+((x3.*RD)./RO1)+((x5.*RS)./RO1))
V02=((((2.*d.*d)-(7.*d)+5))-((VFD.*x4)./VS))./(((1-(2.*d)).*(1-d))+((x1.*RL)./RO2)+((x2.*RC)./RO2)+((x3.*RD)./RO2)+((x5.*RS)./RO2))
V03=((((2.*d.*d)-(7.*d)+5))-((VFD.*x4)./VS))./(((1-(2.*d)).*(1-d))+((x1.*RL)./RO3)+((x2.*RC)./RO3)+((x3.*RD)./RO3)+((x5.*RS)./RO3))
plot(d,V0)
plot(d,V01)
ylim ([0 80])
xlim ([0 0.5])
plot (d,V0,'Color','k','LineWidth',2,'MarkerSize',4);
hold on
plot (d,V01,'Color','m','LineWidth',2,'MarkerSize',4);
hold on
plot (d,V02,'Color','c','LineWidth',2,'MarkerSize',4);
hold on
plot (d,V03,'Color','r','LineWidth',2,'MarkerSize',4);
hold on
grid on
x= [0 0.05 0.1 0.2  0.25 0.3 0.3406 0.38]   
y= [0 2.5  4.7 6.8    8.1 10.1 13.1 16]    
plot (x,y,'--','Color','b','LineWidth',2,'MarkerSize',4);
hold on
grid on
clear