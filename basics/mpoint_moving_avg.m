%m-point moving average
R = 10; %no of samples
n = 0:R-1;
s = 2*n.*(0.9.^n);
d = rand(R,1)-0.5;
x = s + d';
%f = 1/M * ones(M)
%bc we multiply our signal x * f
%then divide it by the number of samples
% eg 1/M [1,1..] * [7,3,4..]
%M = number of samples
M= 10; %filter size
b = (ones(M,1))/M;

%then apply 'filter'
y = filter(b,1,x);