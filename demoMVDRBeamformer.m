close all;
clear all;

% Diadpo 56

c = 300000000;
f0 = 10;
lambda = c/f0;
d = lambda/2;
N = 20;
tetha1 = 0;
tetha2 = -15;

thermalNoise = 0;


SNR = 0;
Ps = 1; % Puissance de la source
Pb = Ps/(10^(SNR/10));


SNRj1 = -30; %SNRJ Jammer (Source non voulue = interferences)
Pj1 = Ps/(10^(SNRj1/10));

SNRj2 = -20;
Pj2 = Ps/(10^(SNRj2/10));

Ru= spatialCovMatrix([deg2rad(20) deg2rad(-20)],[Pj1  Pj2],Pb);

a0 = uniformLinearAntenna(c,f0,d,N,deg2rad(tetha1));
weight = (inv(Ru)*a0)/(a0'*inv(Ru)*a0)

% Interval
Theta = -90:1:+90;

res = [];
for theta = Theta
    a = uniformLinearAntenna(c,f0,d,N,deg2rad(theta));
    gain(weight,a);
    res = [ res , beampattern(weight,a)];
end


%size(res)
plot(Theta,res);
% ylim([-20 30] );
