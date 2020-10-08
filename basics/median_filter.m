%median filter
N=3;%filter size
R = 50; %no of samples
a = rand(1,R)-0.4;
b=round(a);
m = 0:R-1;
s = 2*m.*(0.9.^m);

x = s + b;%generate the impulse noise corrupted signal
y =medfilt1(x,N); %median filtering