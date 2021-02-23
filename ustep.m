%(file name: ustep.m)
%The unit step function is a function of time 't'.
%Usage y = ustep(t)
%
%ustep(t) = 0   if t < 0
%ustep(t) = 1   if t >= 1
%
% t - must be real-valued and can be a vector or a matrix
%
function y=ustep(t)
y = (t>=0);
end

