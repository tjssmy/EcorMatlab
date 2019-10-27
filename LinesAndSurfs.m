set(0,'defaultaxesfontsize',20)
set(0,'defaultaxesfontname','Times New Roman')
set(0,'DefaultLineLineWidth', 2);

set(0,'DefaultFigureWindowStyle','docked')

x = linspace(-1,1,50);
y = linspace(-2,2,100);

[X,Y] = meshgrid(x,y);

Z = exp(-(X.^2+Y.^2)/.25).*sin(10*X);
[U,V] = gradient(-Z);

figure

subplot(2,1,1)
plot(x,Z(43,:),'-.');hold on
plot(x,Z(53,:),'g');
plot(x,Z(63,:),'*--');
legend('43','53','63')
xlabel('x (meters)')
ylabel('Height(meters)')
title('X slices')

subplot(2,1,2)
surf(X,Y,Z,'linestyle','-')
colormap('hot')
xlabel('x (meters)')
ylabel('y (meters)')
zlabel('Height(meters)')
title('3D Surface')



