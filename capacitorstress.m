clear
clc
D=0:0.001:0.468;
V0 =650;
V0P=((((2.*D.*D)-(7.*D)+5))./((1-(2.*D)).*(1-D)))
VPS= (((2.*D.*D)-(6.*D)+4)./((2.*D.*D)-(7.*D)+5))
V31 = ((1+(2*D))./(1-(2*D)))
V31S = ((1-(2*D))./(1-(2*D)))
V32 = (2./(1-(2*D)))
V32S= ((1-(2*D))./(2*(1-(2*D))))
V33=  ((3-(2*D))./(1-(2*D)))      % V34 SAME FORMULA
V33S= ((3-(2*D))./(3-(2*D)))
V35=  ((2+D)./(1-(2*D)))
V35S=(2+D)./(2+D)
V36 = ((3-(3*D)-2*(D.^2))./((1-(2*D)).*(1-D)))
V36S= ((2-(4*(D.^2)))./(3-(3*D)-(2*(D.^2))))
plot (V0P,VPS,'-hexagram','Color','b','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[32 232 332 400 432],'DisplayName','IGSLDSC')
hold on
plot (V31,V31S,'-p','Color','r','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[5 390 430 455 468],'DisplayName','[31] [33] [34] [35]')
hold on
%(pink colour)
plot (V32,V32S,'-d','Color','m','LineWidth',2.5, 'MarkerSize',5,'MarkerFaceColor','n','MarkerIndices',[50 379 425 453 467],'DisplayName','[32]')
hold on
hold on
plot (V36,V36S,'-*','Color','#7E2F8E','LineWidth',2.5, 'MarkerSize',6,'MarkerFaceColor','n','MarkerIndices',[10 350 400 446 464],'DisplayName','[36]')
hold on
grid on
xlim ([0 30])
ylim ([0 1.2])