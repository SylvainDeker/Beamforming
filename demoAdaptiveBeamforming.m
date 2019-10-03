close all;
clear all;

% slide 63

c = 300000000;
f0 = 10;
lambda = c/f0;
d = lambda/2;
N = 20;
theta1 = 0;
theta2 = -15;

Ns = 100;



SNR = -20;
Ps = 1; % Puissance de la source

Pb = Ps/(10^(SNR/10));


SNRj1 = -30; %SNRJ Jammer (Source non voulue = interferences)
Pj1 = Ps/(10^(SNRj1/10));

SNRj2 = -20;
Pj2 = Ps/(10^(SNRj2/10));

X = [];

% bruit
b = sqrt(Pb/2)*(complex(randn(N,Ns),randn(N,Ns)));

a = uniformLinearAntenna(c,f0,d,N,deg2rad(theta1));
% sources
s = sqrt(Ps/2) * a * complex(randn(1,Ns),randn(1,Ns));

X = [s+b];

R = b*b'/Ns;
imagesc(abs(R));colorbar;

power = 1/(a'*inv(R)*a);
power
