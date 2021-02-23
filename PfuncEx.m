echo off; clear; clf;
Dt = 0.002;
T = 6;
M = 3;
t = [0 : Dt : T-Dt];

%signal 
y = exp(-abs(t)/2) .* sin(2*pi*t) .* (ustep(t) - ustep(t-4));

time=[];
y_periodic = [];

for i = -M:M-1
    time=[time i*T+t];
    y_periodic = [y_periodic y];
end

%plot

figure(1); fy=plot(time, y_periodic);
set(fy, 'Linewidth' , 2); 
xlabel('t')
echo on
%compute average power
y_power = sum (y_periodic * y_periodic') * Dt/(max(time)-min(time))
%compute the signal energy in 1 period T
y_energyT = sum (y.* conj(y))*Dt