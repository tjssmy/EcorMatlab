set(0,'defaultaxesfontsize',20)
set(0,'defaultaxesfontname','Times New Roman')
set(0,'DefaultLineLineWidth', 2);

set(0,'DefaultFigureWindowStyle','docked')

x = linspace(-1,1,500);
y = linspace(-2,2,1000);

[X,Y] = meshgrid(x,y);

Z = exp(-(X.^2+Y.^2)/.25).*sin(10*X);
[U,V] = gradient(-Z);

figure

subplot(2,1,1)
plot(x,Z(430,:));hold on
plot(x,Z(530,:));
plot(x,Z(630,:));
legend('430','530','630')
xlabel('x (meters)')
ylabel('Height(meters)')
title('X slices')

subplot(2,1,2)
surf(X,Y,Z,'linestyle','none')
xlabel('x (meters)')
ylabel('y (meters)')
zlabel('Height(meters)')
title('3D Surface')

