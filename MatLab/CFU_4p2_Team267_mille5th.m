% Activity CFU3: 
% File: CFU_4p2_Team267_mille5th.m
% Date: 6 February 2020
% By: Terrance Miller & mille5th 
% Chau Tran
% Mohammed AlHikmani
% Allison Meier
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
ip= input("Initial Population: ");
br = input("Birth Rate: ");
dr= input("Death Rate: ");
cc= input("Carrying capacity: ");
t=input("Number of time periods: ");
c=1;
while(c<=t)
    ip=((br-dr)*(cc*ip-(ip*ip)))/(cc);
    c=c+1;
end
fprintf("Population after %i is %0.2f",t,ip);
    
