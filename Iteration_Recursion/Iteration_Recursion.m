%% The Golden Ratio & the Tiling Disk

%% Clear Cache 
clear all; 
close all;
clc;

%% Switch Statement
example = input('Enter the homework problem, either 1 or 2, you wanna test out: \n');
if (example ~= 1 && example ~= 2)
   fprintf('Error, please enter 1 or 2 and restart program \n');
end

%Switch function allows user to proceed to either homework 1 or 2 
switch (example)

case 1
n = input('Enter an integral radius n: ');

N1 =0;
for k = 1:n
    m = floor(sqrt(n^2-k^2));
    N1=N1+m;
end
rho_n = 4*N1/n^2;

fprintf('n = %1d\n', n );
fprintf('rho_n = %12.8f\n' , rho_n);
fprintf('Error = %12.8f \n',abs(rho_n-pi));


case 2
    x = input('Enter a value x: ');
    tol = 0;
    err = 1e-6;
    iter = 0;
    while abs(err >= tol)
        iter=iter+1;
       x_new = 1+1/x
       err = x_new -x;
       x = x_new;
    end
    fprintf('Number of iterations = %1d\n' , iter);
    fprintf('Final value of iteration = %12.8f \n' , x);
    fprintf('Final value of error = %12.8f\n' , abs(err));

end



