import ustep.*

%set the x axis to -3 to 5 with 0.002 increment
t  = [-3 : 0.002 : 5];

%set the signal

y = exp(-abs(t)/4) .* (ustep(t) - ustep(t-4));

%make the plot
figure(1)
subplot(221); fig0=plot(t,y);
set(fig0,'Linewidth',2);
xlabel('\it t');
ylabel('\bf y');
title('Original signal y(t)');

%this is for scaling
t1 = t*2;
y1 = exp(-abs(t1)/4) .* (ustep(t1) - ustep(t1-4));

figure(1)
subplot(222); fig0=plot(t,y1);
set(fig0,'Linewidth',2);
xlabel('\it t');
ylabel('\bf y');
title('signal y(t*2)');

%this is for shifting
t2 = t+2;
y2 = exp(-abs(t2)/4) .* (ustep(t2) - ustep(t2-4));

figure(1)
subplot(223); fig0=plot(t,y2);
set(fig0,'Linewidth',2);
xlabel('\it t');
ylabel('\bf y');
title('signal y(t+2)');

%this is for dilated signal
t3 = 2-t*2;
y3 = exp(-abs(t3)/4) .* (ustep(t3) - ustep(t3-4));

figure(1)
subplot(224); fig0=plot(t,y3);
set(fig0,'Linewidth',2);
xlabel('\it t');
ylabel('\bf y');
title('signal y(2-t*2)');

subplot(221); axis([-3 5 -.5 1.5]); grid;
subplot(222); axis([-3 5 -.5 1.5]); grid;
subplot(223); axis([-3 5 -.5 1.5]); grid;
subplot(224); axis([-3 5 -.5 1.5]); grid;

