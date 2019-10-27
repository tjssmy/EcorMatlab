set(0,'defaultaxesfontsize',20)
set(0,'defaultaxesfontname','Times New Roman')
set(0,'DefaultLineLineWidth', 2);

set(0,'DefaultFigureWindowStyle','docked')

t = linspace(0,12,1000);
x = 5*cos(t);
y = 6*sin(2*t);
z = t;

t = linspace(0,12,1000);
x2 = 2*cos(t);
y2 = 2*sin(t);
z2 = 1.3*t;

figure
plot3(x,y,z,'-');
hold on
plot3(x2,y2,z2,'--');


