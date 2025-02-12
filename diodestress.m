clear
clc
D=0:0.001:0.468;
V0 =650;
V0P=((((2.*D.*D)-(7.*D)+5))./((1-(2.*D)).*(1-D)))
VPS= (2*((1-D)./((2.*D.*D)-(7.*D)+5)))
V31 = ((1+(2*D))./(1-(2*D)))
V31S = 1./(1+(2*D))
V32 = (2./(1-(2*D)))
V32S= ((1-(2*D))./((1-(2*D))))
V33=  ((3-(2*D))./(1-(2*D)))      % V26 SAME FORMULA
V33S= 1./(3-(2*D))
V35=  ((2+D)./(1-(2*D)))
V35S=1./(2+D)
V36 = ((3-(3*D)-2*(D.^2))./((1-(2*D)).*(1-D)))
V36S= ((2-(3*D)))./(3-(3*D)-2*(D.^2))
plot (V0P,VPS,'-hexagram','Color','b','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[32 232 332 400 432],'DisplayName','IGSLDSC [33] [34]')
hold on
plot (V31,V31S,'-p','Color','r','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[5 90 200 340 390 430 455 468],'DisplayName','[31]')
hold on
plot (V32,V32S,'-d','Color','m','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[50 379 425 453 467],'DisplayName','[32]')
hold on
hold on
plot (V35,V35S,'-pentagram','Color','#A2142F','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[60 280 356 442 460],'DisplayName','[35]')
hold on
plot (V36,V36S,'-*','Color','#7E2F8E','LineWidth',2.5, 'MarkerSize',6,'MarkerFaceColor','n','MarkerIndices',[50 350 400 446 464],'DisplayName','[36]')
hold on
grid on
xlim ([0 30])
ylim ([0 1.2])