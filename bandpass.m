function [h] = bandpass(f1,f2,fs,N)

% Input:
% f1: lowest frwquency
% f2: highest frequency
% fs:sampling rate
% N: The order of the filter (0dd)

% Output:
% The bandpass FIR filter in the form of N-element array

h = zeros(size(N));
f1_c = f1/fs;
f2_c = f2/fs;
w1_c = 2*pi*f1_c;
w2_c = 2*pi*f2_c;

middle = N/2;

for i = (-N/2):(N/2)
    if i == 0
        h(middle + 1) = 2*(f2_c - f1_c);
    else
        h(i + middle + 1) = sin(w2_c*i)/(pi*i) - sin(w1_c*i)/(pi*i);
    end
end
