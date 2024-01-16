function DropFrequencyRange(inputFileName, N, rangeOfFrequencies, outputFileName)
%inputFileName is the file name of an input audio file
%N is the length of DFT
%rangeOfFrequencies is the range of frequencies to drop
%outputFileName is the file name of the output filtered audio file
[x, Fs] = audioread(inputFileName);
X = fft(x, N);
for i = 1:1:N
    if and(abs(X(i)) > rangeOfFrequencies(1), abs(X(i)) < rangeOfFrequencies(end))
        X(i) = 0;
    end
end
y = ifft(X, N);
audiowrite(outputFileName, y, Fs);
figure(1);
hold on;
plot(x, 'r');
plot(y, 'b');
legend('original signal', 'signal obtained after applying Inverse DFT');
end