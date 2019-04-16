%%Author: Iwin Yeung
%%Date: 04/08/2019

%% Clear Cache 
clear all 
close all
clc

%%  Call input for Example Switch Number


%Asks user to select project 1 or 2
example = input('Enter the problem, either 1 or 2, you wanna test out: \n');
if (example ~= 1 && example ~= 2)
   fprintf('Error, please enter 1 or 2 and restart program \n');
end

%Switch function allows user to proceed to either homework 1 or 2 
switch (example)
%=====================================================================
%%  Main Script - Approximating surface area of oblate spheroids with various methods
case 1
% Radius input
r_1 = input('Please enter radius 1 \n');
r_2 = input('Please enter radius 2 less than r_1 \n');
y = acos(r_2/r_1);
A = 2*pi*(((r_1)^2+((r_2)^2/sin(y))*log((cos(y)/(1-sin(y))))));

% Error Checker - checks for error in user input
if (r_2 > r_1 || r_2 == r_1) 
    fprintf('Error please enter a radius r_2 less than r_1 and restart program \n')

% Proceeds with code if there is no error in user input
else
    fprintf('Using exact formula the surface area is: %.10f \n',A);
    fprintf('Using approximation formula the surface area is: %.10f \n',(4*pi*((r_1+r_2)/2)^2));

% Ends the case 1 statement
end
%=====================================================================
%%  Main Script ? Approximating perimeter of ellipse with various methods
case 2
%   Enter a Number - Asks for user input
a = input('Enter a number for a: \n');
b = input('Enter a number for b: \n');

% Error Checker - Checks for user input error
if (a <= 0)||(isreal(a) == 0) || (b<= 0) || (isreal(b) == 0)
   fprintf('Error, please enter a nonzero,real integer for a and b \n');

% Proceeds with code if there is no error in user input
else
h = ((a-b)/(a+b))^2
P_1 = pi*(a+b);
P_2 = pi*sqrt(2*(a^2+b^2));
P_3 = pi*sqrt(2*(a^2+b^2)-0.5*(a-b)^2);
P_4 = pi*(a+b)*(1+h/8)^2;
P_5 = pi*(a+b)*(1+3*h/(10+sqrt(4-3*h)));
P_6 = pi*(a+b)*(64-3*h^2)/(64-16*h);
P_7 = pi*(a+b)*(256-48*h-21*h^2)/(256-112*h+3*h^2);
P_8 = pi*(a+b)*(3-sqrt(1-h))/2;

% Prints out "Perimeter of Circle...." 
fprintf('Perimeter of circle P_1: \n %.10f \n',P_1)
fprintf('Perimeter of circle P_2: \n %.10f \n',P_2)
fprintf('Perimeter of circle P_3: \n %.10f \n',P_3)
fprintf('Perimeter of circle P_4: \n %.10f \n',P_4)
fprintf('Perimeter of circle P_5: \n %.10f \n',P_5)
fprintf('Perimeter of circle P_6: \n %.10f \n',P_6)
fprintf('Perimeter of circle P_7: \n %.10f \n',P_7)
fprintf('Perimeter of circle P_8: \n %.10f \n',P_8)       

% Ends the else statement
end

% Ends the case 2 statement
end
