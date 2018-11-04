%%Soru 1 
%%a)
clc
clear all
close all
fs = 100000;
t = 0:1/fs:1.5;
x1 = sawtooth(2*pi*100*t);
subplot(1,1,1)
plot(t,x1)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude') 
title('Sawtooth Periodic Wave')
%%b)
clc 
clear all
close all
fs = 1000000;
t = 0:1/fs:1.5;
x1 = square(2*pi*20*t);
subplot(1,1,1)
plot(t,x1)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Square Periodic Wave')
%%c)
clc 
clear all
close all
fs = 100000;
t = -1:1/fs:1;
x1 = tripuls(t,100e-3);
subplot(1,1,1)
plot(t,x1)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Triangular Aperiodic Pulse')
%%d)
clc 
clear all
close all
fs = 10000;
t = -1:1/fs:1;
x1 = rectpuls(t,50e-3);
subplot(2,1,2)
plot(t,x1)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Rectangular Aperiodic Pulse')
%%e)
clc
clear all
close all
tc = gauspuls('cutoff',50e3,0.5,[],-60); 
t1 = -tc : 10e-6 : tc; 
y1 = gauspuls(t1,50e3,0.5);
subplot(2,1,1)
plot(t1*1e3,y1)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse')
%%f)
clc 
clear all
close all
fs = 200E9;                    % örnekleme frekansý 
D = [2.5 10 17.5]' * 1e-9;    
t = 0 : 1/fs : 2500/fs;        
w = 2e-9;                      % pulse geniþliði
yp = pulstran(t,D,@rectpuls,w);
T = 0 : 1/50e3 : 10e-3;
D = [0 : 1/1e3 : 10e-3 ; 0.8.^(0:10)]';
Y = pulstran(T,D,@gauspuls,10E3,.5);
subplot(1,1,1)
plot(t*1e9,yp);
axis([0 25 -0.2 1.2])
xlabel('Time (ns)')
ylabel('Amplitude')
title('Rectangular Train')
%%g)
clc
clear all
close all
T = 0 : 1/50e3 : 10e-3;
D = [0 : 1/1e3 : 10e-3 ; 0.6.^(0:10)]';
Y = pulstran(T,D,@gauspuls,10E3,.5);
axis([0 25 -0.2 1.2])
xlabel('Time (ns)')
ylabel('Amplitude')
title('Rectangular Train')
subplot(1,1,1)
plot(T*1e3,Y)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse Train')
% %%Soru 2
N=30
a=zeros(-N,0)
b=ones(0,N)
n=-N:0:N
[zeros(1,N, ones(1,N)]
subplot(1,1,1)
%%Soru 3
clc
clear all
close all
fs=1000 %fs=1 kHz
f=20 %f=20 Hz
t=0:1/fs:5
y1=sin(2*pi*f*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',2)
y2=cos(2*pi*f*t)
subplot(2,1,2)
plot(t,y2,'LineWidth',2)
grid on
%%
n=0:1:100
y=sin(2*pi*n/36)
stem(n,y)
%%
n=-100:1:100
x=cos(2*pi*n/36)
stem(n,x)
%%Soru 4
clc
clear all
close all
t=-5:1:5;
g_even=(g(t)+g(-t))/2
g_odd=(g(t)-g(-t))/2
plot(t,g_odd)
%%Soru 5
clc
clear all
close all
n=-100:100
y=(0.9.^abs(n)).*sin(2*pi*n/4)
sum(abs(y.^2))
%%Soru 6
%%sinüs için
clc
clear all
close all
fs=10 %fs=10 hz
f=1e3 %1 kHz
t=0:1/fs:5
y1=sin(2*pi*f*t)
subplot(3,1,1)
plot(t,y1,'LineWidth',2)
fs1=2e3 %2kHz için
t_samp1=0:1/fs1:5
y2=sin(2*pi*f*t_samp1)
subplot(3,1,2)
stem(t_samp1,y2)
fs2=50e3 %50kHz için
t_samp2=0:1/fs2:5
y3=sin(2*pi*f*t_samp1)
subplot(3,1,3)
stem(t_samp2,y3)
%%cos için
clc
clear all
close all
fs=10 %fs=10 hz
f=1e3 %1 kHz
t=0:1/fs:5
y1=cos(2*pi*f*t)
subplot(3,1,1)
plot(t,y1,'LineWidth',2)
fs1=2e3 %2 kHz için
t_samp1=0:1/fs1:5
y2=cos(2*pi*f*t_samp1)
subplot(3,1,2)
stem(t_samp1,y2)
fs2=50e3 %50 kHz için
t_samp2=0:1/fs2:5
y3=cos(2*pi*f*t_samp1)
subplot(3,1,3)
stem(t_samp2,y3)
%% Soru 7
clc
clear all
close all
n=0:1:100
x1=4+cos(2*pi*n/24)
subplot(3,1,1)
plot(n,x1,'Linewidth',2)
