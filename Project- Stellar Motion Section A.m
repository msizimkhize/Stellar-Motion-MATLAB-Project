%Project: Stellar Motion
%__________________________________

%Stellar Motion I:

%Part 1
load starData
nObs = size(spectra,1)
lambdaStart = 630.02
lambdaDelta = 0.14

%Part 2
lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta
lambda = (lambdaStart:lambdaDelta:lambdaEnd)

s = spectra(:,2)

%Part 3
plot(lambda,s,".-")
xlabel("Wavelength")
ylabel("Intensity")

[sHa,idx] = min(s)
lambdaHa = lambda(idx)

%Part 4
hold on
plot(lambdaHa,sHa,"rs","MarkerSize",8)
hold off

z = lambdaHa/656.28 - 1
speed = z*299792.458


