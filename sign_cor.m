import ustep.*

clear
Dt = 0.01;
T=6.0;
t= [-1 : Dt : T]

%signal 
x = ustep(t) - ustep(t-5);
g1 = 0.5 * (ustep(t) - ustep(t-5));
g2 = -(ustep(t) - ustep(t-5));
g3 = exp(-t/5) .* (ustep(t) - ustep(t-5));
g4 = exp(-t) .* (ustep(t) - ustep(t-5));
g5 = sin(2*pi*t) .* (ustep(t) - ustep(t-5));

%plot
subplot(231); sig1=plot(t,x,'k');
axis([-.5 6 -1.2 1.2]); grid
subplot(232); sig2=plot(t,g1,'k');
axis([-.5 6 -1.2 1.2]); grid
subplot(233); sig3=plot(t,g2,'k');
axis([-.5 6 -1.2 1.2]); grid
subplot(234); sig4=plot(t,g3,'k');
axis([-.5 6 -1.2 1.2]); grid
subplot(235); sig5=plot(t,g4,'k');
axis([-.5 6 -1.2 1.2]); grid
subplot(236); sig6=plot(t,g5,'k');
axis([-.5 6 -1.2 1.2]); grid

%compute signal energies
E0=sum(x .* conj(x))*Dt;
E1=sum(g1 .* conj(g1))*Dt;
E2=sum(g2 .* conj(g2))*Dt;
E3=sum(g3 .* conj(g3))*Dt;
E4=sum(g4 .* conj(g4))*Dt;
E5=sum(g5 .* conj(g5))*Dt;

S0=sum(x .* conj(x))*Dt/(sqrt(E0*E0))
S1=sum(g1 .* conj(g1))*Dt/(sqrt(E0*E1))
S2=sum(g2 .* conj(g2))*Dt/(sqrt(E0*E2))
S3=sum(g3 .* conj(g3))*Dt/(sqrt(E0*E3))
S4=sum(g4 .* conj(g4))*Dt/(sqrt(E0*E4))
S5=sum(g5 .* conj(g5))*Dt/(sqrt(E0*E5))