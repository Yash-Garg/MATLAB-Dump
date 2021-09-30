# Percentage generation of basic waveform

clear all;
clc;
close all;


t=-2:1:2
y=[zeros(1,2),ones(1,1),zeros(1,2)]
subplot(3,2,1)
stem(t,y)
title('unit impulse signal')
xlabel('n');
ylabel('Amplitude');

%Unit step sequence
n=input('Enter the N value')
t=0:1:n-1;
y1=ones(1,n)
subplot(3,2,2)
stem(t,y1)
title('Unit step signal')
xlabel('n');
ylabel('Amplitude');

%Unit ramp
subplot(3,2,3)
stem(t,t)
title('ramp signal')
xlabel('n')
ylabel('Amplitude')

%Exponential signal 
n2=input('Enter length of signal')
t=0:n2;
a=input('Enter a value');
y2=exp(a*t)
subplot(3,2,4)
stem(t,y2)
title('Exponential signal')
xlabel('n')
ylabel('Amplitude')

%Signal sequence
t=0:0.05:pi
y=sin(2*pi*t)
subplot(3,2,5)
stem(t,y)
title('sin signal')
xlabel('n')
ylabel('Amplitude')

%Cos sequence

t=0:0.05:pi
y=cos(2*pi*t)
subplot(3,2,6 )
stem(t,y)
title('cos signal')
xlabel('n')
ylabel('Amplitude')
