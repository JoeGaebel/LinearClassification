clc
X = [2 3; 4 3; 3 5 ; 1 3; 5 6 ]
% 
% X =
% 
%      2     3
%      4     3
%      3     5
%      1     3
%      5     6
%      
Y = [1; 1 ; 1; 2;  2 ]

% Y =
% 
%      1
%      1
%      1
%      2
%      2

iterNum = 1;

wInit = [ 1 ;1 ;1 ];
alpha = 1;

% 
 w = logisticRegressionWeightTrain(X,Y,iterNum,wInit,alpha)
% 
% 
% w =
% 
% w =
% 
%    -0.9904
%    -4.9866
%    -7.9708