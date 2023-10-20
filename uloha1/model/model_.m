Us=400;% V, sdruzene napeti site
TriangleTime2kHz=[0 0.00025 0.0005];
TriangleData=[0 1 0]; %1.021467 při 230 V Uef
TriangleTime10kHz=[0 5E-5 0.0001];
svmFrequency=10000;


% motor
Pn=12000; % Jmenovity vykon stroje (W)
Un=380; % Jmenovite napeti kotvy (V)
In=22; % Jmenovity proud kotvy (A)
nn=1460; % Jmenovite otacky stroje (min-1)
pp=2; % Pocet polparu
J=0.4; % Moment setrvacnosti hridele (kg*m^(2))
f=50; % Napajeci frekvence

% R1=370e-3; % Statorovy odpor vinuti (Ohm)
% R2=225e-3; % Rotorovy odpor vinuti (Ohm)
% L1sigma=2.27e-3; % Rozptylova indukcnost statoroveho vinuti (H)
% L2sigma=2.27e-3; % Rozptylova indukcnost rotoroveho vinuti (H)
% Lm=82.5e-3; % Magnetizacni indukcnost (H)


% L1=L1sigma+Lm; % Statorova indukcnost (H)
% L2=L2sigma+Lm; % Rotorova indukcnost (H)
% sigma=1-Lm^(2)/(L1*L2); %Koeficient rozptylu




