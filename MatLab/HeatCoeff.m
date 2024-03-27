function hc = HeatCoeff(L,Th,Ti)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
hc=((.59*.25)/L)*((9.8*(Th-Ti)*(L*L)*.7)/(1.78e-5^2*Ti))^.25;
end