set(0,'defaultaxesfontsize',14)
set(0,'defaultaxesfontname','Times New Roman')
set(0,'DefaultLineLineWidth', 2);

set(0,'DefaultFigureWindowStyle','docked')

%% Initial conditions
v1(:,1) = [-0.5 -0.2 0].';
v2(:,1) = v1 + [rand(2,1)*1e-3; 0];
v1t(:,1) = v1(:,1);
v2t(:,1) = v2(:,1);

%% Simulation paramaters
N = 10000;
tsim = 0.01;
dt = tsim/N;

%% Plot initial conditions
figure
subplot(1,2,1)
plot3(v1(1,1),v1(2,1),v1(3,1),'O'); hold on 
plot3(v2(1,1),v2(2,1),v2(3,1),'*'); 
xlim([-5,5]);
ylim([-2,2])
zlim([-6e-3,6e-3]);
xlabel('V_1')
ylabel('V_2')
zlabel('I_L')
title('Double Scroll (V_1,V_2,I_L)')

%% Main Simulation loop
it = 1;
m = 20;
for i = 2:N
    t(i) = i*dt;
    v1(:,i) = v1(:,i-1) + RealChua(t(i),v1(:,i-1))*dt; % Circuit 1
    
    v2(:,i) = v2(:,i-1) + RealChua(t(i),v2(:,i-1))*dt;  % Circuit 2

    % plotting
    if mod(i,m) == 0
        it = it + 1;
        tt(it) = it*dt*m;
        v1t(:,it) = v1(:,i);
        v2t(:,it) = v2(:,i);
        subplot(1,2,1)
        plot3(v1t(1,:),v1t(2,:),v1t(3,:),'r'); hold on
        plot3(v2t(1,:),v2t(2,:),v2t(3,:),'b--'); hold off
        xlim([-5,5]);
        ylim([-2,2])
        zlim([-6e-3,6e-3]);
        xlabel('V_1')
        ylabel('V_2')
        zlabel('I_L')
        title('Double Scroll (V_1,V_2,I_L)')

        subplot(2,2,2)
        plot(tt,v1t(1,:)); hold on
        plot(tt,v1t(2,:)); hold off
        xlim([0 tsim])
        ylim([-5 5])
        xlabel('time')
        ylabel('V')
        legend('V_1','V_2')
        title('Circuit 1')
        subplot(2,2,4)
        plot(tt,v2t(1,:)); hold on
        plot(tt,v2t(2,:)); hold off
        xlim([0 tsim])
        ylim([-5 5])
        xlabel('time')
        ylabel('V')
        legend('V_1','V_2')
        title('Circuit 2')
        
        pause(0.001)
    end
     
end

%% Final figures
figure

plot3(v1(1,:),v1(2,:),v1(3,:),'r'); hold on
plot3(v2(1,:),v2(2,:),v2(3,:),'b--'); hold on
xlabel('V_1')
ylabel('V_2')
zlabel('I_L')
title('Chua Circuit Output')

figure

plot(v1(1,:),v1(2,:),'r'); hold on
plot(v2(1,:),v2(2,:),'b--'); hold on
xlabel('V_1')
ylabel('V_2')
title('Chua Circuit Output')

