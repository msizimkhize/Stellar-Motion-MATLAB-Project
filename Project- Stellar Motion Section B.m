%Project: Stellar Motion
%__________________________________

%Stellar Motion II:

%Part 1
load starData

[sHa,idx] = min(spectra);
lambdaHa = lambda(idx);
z = lambdaHa/656.28 - 1;
speed = z*299792.458

%Part 2
for v = 1:7
    s = spectra(:,v);
if (speed(v)<=0)
    plot(lambda,s,"--")
else
    plot(lambda,s,"LineWidth",3)
end
hold on
end
hold off

%Part 3
legend(starnames)

movaway = starnames(speed>0)