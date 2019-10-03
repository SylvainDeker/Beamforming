function [a]=uniformLinearAntenna(c,f0,d,N,tetha1)
    a = [];
    lambda = c/f0;
    d = lambda/2;
    fs = d*sin(tetha1)/lambda;
    for n = 0:1:N-1
        a = [a; exp(-2*pi*complex(0,1)*(n)*fs)]; 
    end
    
end
