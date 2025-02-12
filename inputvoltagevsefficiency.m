clear
clc
Vin=38:2:48  
Po=200;
RL=2112.5; 
Vo=650;                          
G = Vo./Vin
f=50000;
Io=Po/Vo
d= (((3*G)-7)-(sqrt((G.^2)+(6*G)+9)))./(4*(G-1))
vc=0.05;              
VF=0.79;                 
Rs=55e-3;                       
Rd=50e-3;
rl=15e-3;                 
rc1 = 0.01;
rc2 = 0.01;
rc3 = 0.01;
rc4 = 0.01;
rc5 = 0.01;
IL = Io*(((2.*d.^3)-(9*d.^2)+(8.*d)-1)./((1-(2.*d)).*(1-d).*d));
L = (2.*Vin.*d.*(1-d))./(f.*0.1.*IL.*(1-(2.*d)));
VC1 = Vin./(1-(2.*d));
VC2 = (2.*Vin.*(1-d))./(1-(2.*d));
VC3 = (Vin.*((2.*d.^2)-(6.*d)+4))./((1-(2.*d)).*(1-d));
VC4 = (2.*Vin)./(1-(2.*d));
VC5 = (Vin.*((2.*d.^2)-(5.*d)+3))./((1-(2.*d)).*(1-d));
output=(Vin.*((2.*d.^2)-(7.*d)+5))./((1-(2.*d)).*(1-d));
Ic1rms = (Io.*((2.*d.^3)-(5.*d.^2)+(2.*d)+1))./((1-(2.*d)).*((1-d).^1.5).*sqrt (d));
Ic2rms = Io./(sqrt ((d).*(1-d)));
Ic3rms = Io./(sqrt ((d).*(1-d)));
Ic4rms =  Io.*(sqrt(d)/sqrt(1-d));
Ic5rms =  (Io.*(1+d))./(sqrt(d).*sqrt(1-d));
C1=(Io.*((2.*d.^3)-(5.*d.^2)+(2.*d)+1))./((1-(2.*d)).*(1-d).*f.*vc.*VC1);
C2=Io./(f*vc*VC2);
C3=Io./(f*vc*VC3);
C4=(Io*d)./(f*vc*VC4);
C5=(Io*(1+d))./(f*vc*VC5);
Iin =(Io.*((2.*d.^2)-(7.*d)+5))./((1-(2.*d)).*(1-d));
IS1AVG= (Io.*((2.*d.^3)-(5.*d.^2)+(2.*d)+1))./((1-(2.*d)).*(1-d));
IS1RMS= (Io.*((2.*d.^3)-(5.*d.^2)+(2.*d)+1))./((sqrt(d)).*(1-(2.*d)).*(1-d));
IS2AVG= (Io.*((2.*d.^3)-(5.*d.^2)+(2.*d)+1))./((1-(2.*d)).*(1-d));
IS2RMS= (Io.*((2.*d.^3)-(5.*d.^2)+(2.*d)+1))./((sqrt(d)).*(1-(2.*d)).*(1-d));
ID1AVG= (Io.*((2.*d.^3)-(5.*d.^2)+(2.*d)+1))./((1-(2.*d)).*(1-d));
ID1RMS=(Io.*((2.*d.^3)-(5.*d.^2)+(2.*d)+1))./((1-(2.*d)).*((1-d).^1.5));
ID2AVG= (Io.*((2.*d.^3)-(5.*d.^2)+(2.*d)+1))./((1-(2.*d)).*(1-d));
ID2RMS=(Io.*((2.*d.^3)-(5.*d.^2)+(2.*d)+1))./((1-(2.*d)).*((1-d).^1.5));
ID3AVG= Io;
ID3RMS=Io./(sqrt(d));
ID4AVG= Io;
ID4RMS=Io./sqrt(1-d);
ID5AVG= Io;
ID5RMS=Io./(sqrt(d));
ID6AVG= Io;
ID6RMS=Io./sqrt(1-d);
VS1= Vin./(1-(2*d));
VS2= Vin./(1-(2*d));
VD1= Vin./(1-(2*d));
VD2= Vin./(1-(2*d));
VD3= (2*Vin)./(1-(2*d));
VD4= (2*Vin)./(1-(2*d));
VD5= (2*Vin)./(1-(2*d));
VD6= (2*Vin)./(1-(2*d));
PL=((IL.^2).*rl);
PC=(Ic1rms.^2*rc1)+(Ic2rms.^2*rc2)+(Ic3rms.^2*rc3)+(Ic4rms.^2*rc4)+(Ic5rms.^2*rc5);
PSC = ((IS1RMS).^2+(IS2RMS).^2).*Rs  ;        
PSWI2=(0.5.*f.*74.*10^(-9)).*((VS1.*IS1AVG)+(VS2.*IS2AVG)); 
PDC = ((ID1RMS).^2+(ID2RMS).^2+(ID3RMS).^2+(ID4RMS).^2+(ID5RMS).^2+(ID6RMS).^2).*Rd ;     
PDVF = ((ID1AVG+ID2AVG+ID3AVG+ID4AVG+ID5AVG+ID6AVG)).*VF  ;       
Loss2 =PL+PC+PSC+PSWI2+PDC+PDVF
effi2=(Po./(Po+PL+PC+PSC+PSWI2+PDC+PDVF)).*100
ylim ([90 99])
xlim ([38 48])
hold on
plot (Vin,effi2,'-p','Color','blue','LineWidth',2.5, 'MarkerSize',4,'MarkerFaceColor','n')
hold on
x = [38,  40,  42,  44,  46, 48]; % Input voltage
y = [91.7,  93.2,  94.42,  95.3, 95.6,  95.91]; % eff
plot (x,y,'-p','Color','magenta','LineWidth',2.5, 'MarkerSize',4,'MarkerFaceColor','n')
hold on
grid on