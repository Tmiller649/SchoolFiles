% Activity HW: 
% File: HW3p2_Task1_Team267_mille5th.m
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
%This graphs things
clear; clc;

O = input('Resistance = ');
max = input('max current = ');
x=linspace(0,max,max*5);
V=x*O;
P=(x.^2)*O;
subplot(3,1,1);
hold on
xlabel("Current");
ylabel("Voltage");
title("Voltage Vs Current");
plot(x,V,"b--");

subplot(3,1,2);
hold on
xlabel("Current");
ylabel("Power");
title("Power Vs Current");
plot(x,P,"g");


subplot(3,1,3);
hold on
yyaxis("left");
ylabel("Power");
plot(x,P,"b--");

yyaxis("right");
ylabel("Voltage");
plot(x,P,"g");
xlabel("Current");
title("Voltage and Power Vs Current");
legend("Power","Voltage","Location", "northeast");