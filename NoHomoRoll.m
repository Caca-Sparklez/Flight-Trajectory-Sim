clc
clear

% inputting deflection values for final version of code
% ldelta_1 = input('What is the top fin defelection? ');
% ldelta_2 = input('What is the right fin defelection? ');
% ldelta_3 = input('What is the bottom fin defelection? ');
% ldelta_4 = input('What is the left fin defelection? ');

%These variables are for testing purposes only
ldelta_1 = 5;
ldelta_2 = 4;
ldelta_3 = -1;
ldelta_4 = 2;

% Calculation of elevator, rudder, and aileron defelection

edef = (ldelta_2+ldelta_4)/2;

rdef = (ldelta_2+ldelta_3)/2;

adef = (ldelta_2-ldelta_4+ldelta_1-ldelta_3)/2;

% Calculation for roll deriative

D = 4;

% X is a stand in for a variable from equation 17
c_Ldelta = (yFes*X)/D;


