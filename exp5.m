clear all;
clc;
close all;

n=input('Enter the filter order');
Wn=4;       %cut of freq
Fs=10;      %sampling freq
Wn1=2*Wn/Fs;
[b,a]=butter(n,Wn1);
w=0:0.01:1;
[h,Om]=freqs(b,a,w);
m=20*log10(abs(h));
an=angle(h);

subplot(2,1,1)
plot(Om,m)
xlabel('Normalized frequency')
ylabel('Magnitude in dB')

subplot(2,1,2)
plot(Om,an)
xlabel('Normalized frequency')
ylabel('phase in radians')
