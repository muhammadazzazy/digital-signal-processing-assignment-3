clc;
clear;
close all;
c = [0, 0, 0, 0, 0];
N = 5;
for k = 0:1:N-1
    for n = 0:1:N-1
        c(k+1) = c(k+1)+(3*sin(2*pi*n/5))*exp((-1i*2*pi*k*n)/N);
    end
    c(k+1) = c(k+1)/N;
end
disp(c);
k = [-3, -2, -1, 0, 1, 2, 3, 4];
magnitude = [0, 0, 3/2, 0, 3/2, 0, 0, 3/2];
figure(1);
stem(k, magnitude);
xlabel("k");
ylabel("|c_k|");
phase = [0, 0, -pi/2, NaN, -pi/2, NaN, NaN, pi/2];
figure(2);
stem(k, phase);
xlabel("k");
ylabel("\angle c_k")