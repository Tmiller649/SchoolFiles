% Activity HW: 
% File: HW5p2_Task2a_Team267_mille5th.m
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
% This codes vectors

E = [-5 -3 0 4 8 10 11 8 6 5 2 -5 7 5 9];
DE = input("Enter Desired earnings: ");
sum=0;
c=1;
while (sum<DE)
sum=(E(c)*1000)+sum;
c=c+1;
if (c>15)
    disp("The company didnt reach the goal")
break
end
end

if (c<=15)
fprintf('The profit is %.0f after %.0f months ',sum,c);
end