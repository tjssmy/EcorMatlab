set(0,'defaultaxesfontsize',20)
set(0,'defaultaxesfontname','Times New Roman')
set(0,'DefaultLineLineWidth', 2);

set(0,'DefaultFigureWindowStyle','docked')

x = linspace(-5,10,1000);
y = sin(x).*sin(2*x);
y2 = cos(x).*sin(2*x);

plot(x,y)
hold on
plot(x,y2)
