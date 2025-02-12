clear
clc
D=0:0.005:0.425
Vin =48;
V0=((((2.*D.*D)-(7.*D)+5))./((1-(2.*D)).*(1-D)))
V31 = ((1+(2*D))./(1-(2*D)))
V32 = (2./(1-(2*D)))
V33=  ((3-(2*D))./(1-(2*D))) 
V35=  ((2+D)./(1-(2*D)))
V36 = ((3-(3*D)-2*(D.^2))./((1-(2*D)).*(1-D)))
plot (D,V0,'-hexagram','Color','b','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[20 40 60 75 86],'DisplayName','IGSLDSC')
hold on
plot (D,V31,'-p','Color','r','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[20 40 60 75 86],'DisplayName','[31]')
hold on
%(pink colour)
plot (D,V32,'-d','Color','m','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[20 40 60 75 86],'DisplayName','[32]')
hold on
% V26 SAME FORMULA(skyblue colour)
plot (D,V33,'->','Color','c','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[20 40 60 75 86],'DisplayName','[33] [34]')
hold on
% (meroon colour)
plot (D,V35,'-pentagram','Color','#A2142F','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[20 40 60 75 86],'DisplayName','[35]')
hold on
% (green colour)
plot (D,V36,'-*','Color','#7E2F8E','LineWidth',2.5, 'MarkerSize',6,'MarkerFaceColor','n','MarkerIndices',[20 40 60 75 86],'DisplayName','[36]')
hold on
grid on
ylim ([0 30])
xlim ([0 0.425])
hold on
grid on