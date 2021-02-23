import ustep.*

% to graph a signal, the first step is to determine the x-axis and the
% y-axis to plot.

% this will be the x-aixs (time)
t = [-2 : 0.01 : 3];

%this is the signal
y = exp(-t) .* sin( 10 *pi * t) .* ustep(t + 1);

%this is the code for the plot
figure(1); fig1=plot(t,y); 
set(fig1, 'linewidth',2);
xlabel('\it t');
ylabel('{\bf y} ({\it t})');
title('Time Domain');