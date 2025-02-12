clear
clc
d=0:0.01:0.5
K = (0.25.*((d).*((1-d).^3).*(1-(2.*d))))./ ((-(2.*d.^3)+(9.*d.^2)-(12.*d)+5))
hold on
plot (d,K,'Color','k','LineWidth',2,'MarkerSize',4)
ylim ([0 0.006])
xlim ([0 0.5])
hold on
grid on
fill(d,K,'k','FaceAlpha',0.3)
hold on