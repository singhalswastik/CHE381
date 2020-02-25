clear;
s=tf('s');
Ti=5;
Td=0.5;
h=(2.5*(Ti*s+1)*(Td*s+1))/((5*s+1)*(2*s+1)*(s+1)*(0.5*s+1)*(Ti*s)*(0.1*Td*s+1));
rlocus(h);