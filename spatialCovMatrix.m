function [R] = spatialCovMatrix(tethas,powers,thermalnoise)
%SPATIALCOVMATRIX Summary of this function goes here
%   Detailed explanation goes here

c = 300000000;
f0 = 10;
lambda = c/f0;
d = lambda/2;
N = 20;


R = zeros(N,N);

for l=1:1:size(tethas,2)
    ula = uniformLinearAntenna(c,f0,d,N,tethas(l));
    R = R + powers(l)*ula()*ula';
end
    R = R + thermalnoise*thermalnoise*eye(N);

end
