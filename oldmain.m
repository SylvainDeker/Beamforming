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
a1 = uniformLinearAntenna(c,f0,d,N,tetha1);
a2 = uniformLinearAntenna(c,f0,d,N,tetha2);

cov = spatialCovMatrix([tetha1,tetha2],[power1, power2],0);

weight = ones(N);

g = gain(weight,a2);
