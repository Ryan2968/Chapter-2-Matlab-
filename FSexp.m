%this is numericall method
%you have to define g(t)
%in this expample g(t) = tri(t)

echo off;
clear;
clf;

j = sqrt(-1) % this is imagray
b=2;    %a & b are the bounds for the peroid
a=-2;
tol = 1.e-5 %the error tolerance
T=  b-a % this is the period
N = 11 % this is the number of coefficients
Fi = [-N:N]*2*pi/T; %this is the frequency range
%D_0
fun= @(t) tri(t/2);
D(N + 1) = 1/T * quad(fun,a,b,tol);

for i=1:N
    %Find Dn for n = 1 .... , N stored in D(N+2)
    fun = @(t) exp(-j*2*pi*t*i/T).*tri(t/2);
    D(i+N+1) = 1/T * quad(fun,a,b,tol);
    %Find Dn for n = -N .... , -1 stored in D(1)
    fun = @(t) exp(j*2*pi*t*(N+1-i)/T) .* tri(t/2);
    D(i) = 1/T *quad(fun,a,b,tol);
end
%draw the plot
figure(1);
subplot(211);
s1=stem([-N:N],abs(D));
set(s1, 'linewidth', 2);
ylabel('|D_n|');
title('Amp of D_n')
subplot(212);
s2=stem([-N:N],angle(D));
set(s2, 'Linewidth',2);
ylabel('<D_n');
title('Angle of D_n');
