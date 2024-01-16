clc;
clear;
close all;
w = -pi:pi;
magnitude = 1/256*sqrt(17-8*cos(w));
figure(1);
plot(w, magnitude);
xlabel("w");
ylabel("|X(w)|");
