%ensemble average filter
R = 50; %no of samples
m = 0:R-1;
s = 2*m.*(0.9.^m);
subplot(2,2,1)
stem(m,s);
xlabel('Time index n');
ylabel('Amplitude');
title('Original');
d = rand(R,1)-0.5; %generate the random noise
%rand (R,1) is ok but -0.5 for avoiding amplitude given by noise
%rand function to produce noise
%imnoise function to produce noise
x_ave = s + d'; %d' in order to turn d from column to row vestor
subplot(2,2,2)
stem(m,d);
xlabel('Time index n');
ylabel('Amplitude');
title('Noise');

subplot(2,2,3)
stem(m,x_ave);
xlabel('Time index n');
ylabel('Amplitude');
title('Corrupted');

ensemble_avg = x_ave/R;
subplot(2,2,4)
stem(m,ensemble_avg);
xlabel('Time index n');
ylabel('Amplitude');
title('Ensemble Averaged');

