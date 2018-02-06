%%=== PleaseSeeThroughMyBrokenHeart ===% 
%
% Purpose: To predict presence of Coronary Artery 
% Disease

clc; clear; close all

%initialize important data 
data = load('CADdata.txt');
X = data(:,[1:13]); y = data(:,14);
m = length(X);
y = replaceY(y);
X = [ones(m,1) X];
initial_theta = zeros(size(X,2),1);
lambda = 1;

fprintf('\nProgram paused. press enter to continue\n');
pause;

%Compute cost and display initial cost + gradient

[cost, grad] = costFunction(initial_theta,X,y,lambda);

fprintf('Cost at the initial values of theta: %f\n', cost);

fprintf('\nProgram paused. press enter to continue\n');
pause;


%Compute fminunc and accuracy
initial_theta = zeros(size(X, 2), 1);

lambda = 6;

options = optimset('GradObj', 'on', 'MaxIter', 400);
[theta, J, exit_flag] = ...
	fminunc(@(t)(costFunction(t, X, y, lambda)), initial_theta, options);



p = accuracy(X, theta);

percentage = mean(double(p==y)) * 100;
fprintf('Training accuracy: %f\n', percentage);
