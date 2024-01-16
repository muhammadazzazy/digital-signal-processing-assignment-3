clc;
clear;
close all;
c = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
N = 15;
for k = 0:1:N-1
    for n = 0:1:N-1
        c(k+1) = c(k+1)+(3*sin(4*pi*n/5)+cos(2*pi*n/3))*exp(-1i*2*pi*k*n/N) ;
    end
    c(k+1) = c(k+1)/N;
end
disp(c);
k = [-14, -13, -12, -11, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
magnitude = [0, 0, 0, 0, 1/2, 3/2, 0, 0, 3/2, 1/2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1/2, 3/2, 0, 0, 3/2, 1/2, 0, 0, 0, 0, 0];
figure(1);
stem(k, magnitude);
xlabel("k");
ylabel("|c_k|");
phase = [NaN, NaN, NaN, NaN, 0, -pi/2, NaN, NaN, pi/2, 0, NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN, NaN, 0, -pi/2, NaN, NaN, pi/2, 0, NaN, NaN, NaN, NaN, NaN];
figure(2);
stem(k, phase);
xlabel("k");
ylabel("\angle c_k")