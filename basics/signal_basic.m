%generate a length-N complex exponential sequence with exponent a
N = 50; %number of samples
K=1;%gain
a=0;
b = (pi/2); %imaginary exponent
n=1:N; %n=1 to N
x = k*exp((a+1i*b)*n); %imaginary i = 1i
subplot(1,2,1)
stem(n,real(x)); %plot the real part
xlabel('Time index n');
ylabel('Amplitude');
title('Real Part');

subplot(1,2,2)
stem(n,imag(x)); %plot the imaginary part
xlabel('Time index n');
ylabel('Amplitude');
title('Imaginary Part');
