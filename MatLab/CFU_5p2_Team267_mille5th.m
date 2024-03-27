% Activity CFU5: 
% File: HW5p2_Task2_Team267_mille5th.m
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
%

x=linspace(0,500,500);
y=.01*(x.^2)+(10*cos(.5*x)-(6*(x.^.5)));
pos=0;
c=1;
pp=0;
pn=0;
while(c<500)
    if x(c)>=0
        pos= pos+1; 
    end
    c=c+1;
end
pp= pos/500;
pn=1-pp;
fprintf('%.2d %% are positive ',pp);
fprintf('%.2d %% are negative ',pn);
disp(pn);
figure
hold on
plot(x,y,"r--")
xlabel("Time")
ylabel("Function")
title("CFU Graph")
legend("f(t)","Location", "northeast");
