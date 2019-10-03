close all;
clear all;

c = 300000000;
f0 = 10;
lambda = c/f0;
d = lambda/2;
N = 20;
tetha1 = 0;
tetha2 = -15;
power1 = 1;
power2 = -20;
thermalNoise = 0;
%a1 = uniformLinearAntenna(c,f0,d,N,tetha1);


res = [];

%weight = ones(N,1);
weight = uniformLinearAntenna(c,f0,d,N,deg2rad(60)); % On change le degre ici de la source (simulation)
weight

Theta = -90:1:+90;

for theta = Theta
    a = uniformLinearAntenna(c,f0,d,N,deg2rad(theta));
    gain(weight,a);
    res = [ res , beampattern(weight,a)];
end


%size(res)
plot(Theta,res); ylim([-20 30] );
