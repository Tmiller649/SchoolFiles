% Activity CFU3: 
% File: HW3p2_Task2_Team267_mille5th.m
% Date: 5 February 2020
% By: Terrance Miller & mille5th 
%
% Section: 021
% Team: 267
%
% ELECTRONIC SIGNATURE (if team assignment, include all members info)
% Terrance Miller
%
% The electronic signature above indicates the script
% submitted for evaluation is my individual work, and I
% have a general understanding of all aspects of its
% development and execution.
%
% A BRIEF DESCRIPTION OF WHAT THE SCRIPT OR FUNCTION DOES
%
V_make = input('Input the vehicle model: ', 's');
V = input('Input the vehicle speed: ');
Af =0;
c =0;
Ahp=0;
p=.0022633;
V=(V*5280)/3600;
if V_make == "Prius"
    Af = (58.3/12)*(68.7/12);
    c = .25;
    Ahp = (.5*(V*V*V)*p*c*(Af))/550;
elseif V_make == "Camaro"
    Af = (51.3/12)*(74.1/12);
    c = .34;
    Ahp = (.5*(V*V*V)*p*c*(Af))/550;
elseif V_make == "Wrangler"
    Af = (71.2/12)*(68.3/12);
    c = .58;
    Ahp = (.5*(V*V*V)*p*c*(Af))/550;
end
fprintf('AHP is %.2f \n',Ahp);