% Activity CFU: 
% File: CFU7p2_Task1_Team267_mille5th.m
% Date: 27 February 2020
% By: Terrance Miller
%Allison meier, meierao
%Mohammed AlHkmani
%Chau Tran
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
%This graphs things
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


