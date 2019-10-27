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

subplot(2,2,1)
plot(x,Z(430,:));hold on
plot(x,Z(530,:));
plot(x,Z(630,:));
title('X slices')

subplot(2,2,2)
plot(y,Z(:,200));hold on
plot(y,Z(:,250));
plot(y,Z(:,300));
title('Y slices')

subplot(2,2,3)
surf(X,Y,Z,'linestyle','none')
title('3D Surface')

subplot(2,2,4)
surf(X,Y,Z,'linestyle','none')
title('Top View')
view(2)