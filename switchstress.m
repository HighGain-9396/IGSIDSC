clc
clear
D=0:0.001:0.468;
V0 =650;
V0P=((((2.*D.*D)-(7.*D)+5))./((1-(2.*D)).*(1-D)))
VPS= ((1-D)./((2.*D.*D)-(7.*D)+5))
V31 = ((1+(2*D))./(1-(2*D)))
V31S = 1./(1+(2*D))
V32 = (2./(1-(2*D)))
V32S= ((1-(2*D))./(2*(1-(2*D))))
V33=  ((3-(2*D))./(1-(2*D)))      
V33S= 1./(3-(2*D))
V35=  ((2+D)./(1-(2*D)))
V35S=1./(2+D)
V36 = ((3-(3*D)-2*(D.^2))./((1-(2*D)).*(1-D)))
V36S= ((1-D))./(3-(3*D)-2*(D.^2))
plot (V0P,VPS,'-hexagram','Color','b','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[32 232 332 400 432],'DisplayName','IGSLDSC')
hold on
plot (V31,V31S,'-p','Color','r','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[5 90 200 340 390 430 455 468],'DisplayName','[31]')
hold on
%(pink colour)
plot (V32,V32S,'-d','Color','m','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[310 379 425 453 467],'DisplayName','[32]')
hold on
% V26 SAME FORMULA(skyblue colour)
plot (V33,V33S,'->','Color','c','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[90 365 420 450 466],'DisplayName','[33] [34]')
hold on
% (meroon colour)
plot (V35,V35S,'-pentagram','Color','#A2142F','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[60 280 356 442 460],'DisplayName','[35]')
hold on
% (green colour)
plot (V36,V36S,'-*','Color','#7E2F8E','LineWidth',2.5, 'MarkerSize',6,'MarkerFaceColor','n','MarkerIndices',[50 350 400 446 464],'DisplayName','[36]')
hold on
grid on
xlim ([0 30])
ylim ([0 1])