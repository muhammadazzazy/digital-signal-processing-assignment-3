function ApplyDFT(inputFileName, N, M, outputFileName)
%inputFileName is the file name of an input audio file
%N is the length of DFT
%M is the length of Inverse DFT
%outputFileName is the file name of the output audio file
[x, Fs] = audioread(inputFileName);
X = fft(x, N);
y = ifft(X, M);
for i = 0:1:M-1
    if(~isreal(y(i+1)))
        y(i+1) = abs(y(i+1));
    end
end
audiowrite(outputFileName, y, Fs);
figure(1);
hold on;
plot(x, 'r');
plot(y, 'b');
legend('original signal', 'signal obtained after applying Inverse DFT');
end
