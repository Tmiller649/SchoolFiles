% Activity CFU3: 
% File: CFU_3p2_Team267_mille5th.m
% Date: 30 January 2020
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
T_desired = input('Input the desired temperature(F): ');
T_measured = input('Input the measured temperature(F): ');
T_diff = T_desired - T_measured;
if T_diff < -20 || T_diff>20
    fprintf('sensor error');
elseif T_diff <= 20 && T_diff >2
    fprintf('Turn on Air Conditioner');
elseif T_diff <= 2 && T_diff >= -2
    fprintf('No action necessary');
elseif T_diff < -2 && T_diff >= -20
    fprintf('Turn on Furnace');
end
    

