alpha = 0.1;
iterNum = 100;
numberOfClasses = max(Y_train);
numberOfColumns = size(X_train, 2) + 1;
Winit = randn(numberOfClasses, numberOfColumns);
W = p8(X_train, Y_train, iterNum, Winit, alpha);
C = p7(W, X_test);
[err, CONF] = p2(C, Y_test)

% Error rate of Batch update

% err =
% 
%     0.1645
% 
% 
% CONF =
% 
%    158     0     1     1     2     3     3     0     1     0
%      0   229     7     1     2     2     1     8     6     0
%      2     1   175     3     1     0     4     7     4     0
%      0     0     7   162     0     4     0     4     8     2
%      0     0     0     1   191     5     2     5     4    11
%      7     1     3     9     0   140     7     1     8     4
%      2     2     5     2     7     4   156     0     2     0
%      2     0     6     7     0     2     2   140     2     5
%      0     1    14    14     7    14     3     4   152     4
%      4     0     1     7     7     5     0    36     5   168

% Error rate with 5NN

% err =
% 
%     0.0850
% 
% 
% CONF =
% 
%    173     0     4     0     0     2     3     1     3     0
%      0   234     9     0     2     1     1    12     1     0
%      0     0   192     0     0     1     0     3     1     0
%      0     0     0   188     0     5     0     0     9     2
%      0     0     1     0   199     2     2     2     3     5
%      0     0     0     6     0   158     1     1     6     4
%      1     0     3     2     3     3   171     0     2     0
%      1     0     8     4     1     1     0   178     3     4
%      0     0     2     3     0     2     0     0   160     2
%      0     0     0     4    12     4     0     8     4   177