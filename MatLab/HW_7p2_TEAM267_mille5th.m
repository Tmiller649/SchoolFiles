% Activity CFU: 
% File: HW7p2_Task1_Team267_mille5th.m
% Date: 5 March 2020
% By: Terrance Miller
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
% the picture do be rotating doe
pic =imread("Arm_Fracture.jpg");
figure(1); imshow(pic);
[r,c] = size(pic);
newPic=Rot90(pic,r,c);
figure(2); imshow(newPic);

