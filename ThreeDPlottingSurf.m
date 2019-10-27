set(0,'defaultaxesfontsize',20)
set(0,'defaultaxesfontname','Times New Roman')
set(0,'DefaultLineLineWidth', 2);

set(0,'DefaultFigureWindowStyle','docked')

x = linspace(-1,1,500);
y = linspace(-2,2,1000);

[X,Y] = meshgrid(x,y);

Z = exp(-(X.^2+Y.^2)/.25);

figure
surf(X,Y,Z,'linestyle','none')


Z = exp(-(X.^2+Y.^2)/.25).*sin(10*X);
figure
surf(X,Y,Z,'linestyle','none')

figure
x = linspace(-1,1,25);
y = linspace(-2,2,50);

[X,Y] = meshgrid(x,y);
Z = exp(-(X.^2+Y.^2)/.25);
[U,V] = gradient(-Z);

quiver(X,Y,U,V)