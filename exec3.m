# Linear Convolution of Two Sequence

clear all;
clc;
close all;
x1 =input('enter sequence x1(n)');
n1=0:(length(x1)-1);
x2=input('enter sequence x2(n)');
n2=0:(length(x2)-1);
y=conv(x1,x2)

subplot(3,1,1)
stem(n1,x1)
xlabel('n1')
ylabel('x1')

subplot(3,1,2)
stem(n2,x2)
xlabel('n2')
ylabel('x2')

n3=0:(length(x2)+length(x1)-2);
subplot(3,1,3)
stem(n3,y)
xlabel('n3')
ylabel('x3')
