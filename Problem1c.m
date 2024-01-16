clc;
clear;
close all;
x = [0, 1];
N = 2;
c = [0, 0];
for k = 0:1:N-1
    for n = 0:1:N-1
        c(k+1) = c(k+1)+x(n+1);
    end
    c(k+1) = c(k+1)/N;
end
disp(c);
k = [-1, 0, 1, 2];
magnitude = [1/2, 1/2, 1/2, 1/2];
figure(1);
stem(k, magnitude);
xlabel("k");
ylabel("|c_k|");
phase = [0, 0, 0, 0];
figure(2);
stem(k, phase);
xlabel("k");
ylabel("\angle c_k");