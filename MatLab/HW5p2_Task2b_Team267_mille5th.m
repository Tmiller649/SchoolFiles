% Activity HW: 
% File: HW5p2_Task2b_Team267_mille5th.m
% Date: 13 February 2020
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
% It do be programming doe

E = [-5 -3 0 4 8 10 11 8 6 5 2 -5 7 5 9];
E_new=linspace(0,15,15);
F=15;
B=1;
c=0;
while(c<=7)
E_new(F)=E(B);
E_new(B)=E(F);
F=F-1;
B=1+B;
c=c+1;
end
disp(E_new);