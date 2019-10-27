alpha = 2;
omega = 30;
t = linspace(0,2,1000);
y = cos(omega*t);
y2 = exp(-alpha*t).*cos(omega*t);

figure
plot(t,y,'linewidth',2); hold on
plot(t,y2,'--','linewidth',2)