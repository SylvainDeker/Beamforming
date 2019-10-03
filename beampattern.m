function [g] = beampattern(w,a)
%BEAMPATTERN Summary of this function goes here
%   Detailed explanation goes here
g = gain(w,a);
g = 10*log10(abs(g)*abs(g));
end

