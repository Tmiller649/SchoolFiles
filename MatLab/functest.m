L=input("Input L: ");
Th=input("Input Th: ");
Ti=[255,265,275,285];
c=1;
while c<=4
hc=HeatCoeff(L,Th,Ti(c));
T=Th-Ti(c);
hl=HeatLoss(hc,L,T);
disp(hl);
c=c+1;
end


