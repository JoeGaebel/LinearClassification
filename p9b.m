alpha = 0.01;
iterNum = 100;
numberOfClasses = max(Y_train);
numberOfColumns = size(X_train, 2) + 1;
Winit = randn(numberOfClasses, numberOfColumns);

W = p9(X_train, Y_train, iterNum, Winit, alpha);

Ctrain = p7(W, X_train);
Ctest = p7(W, X_test);

[train_err, CONF] = p2(Ctrain, Y_train);
[test_err, CONF] = p2(Ctest, Y_test);

train_err
test_err

% Error rate of Softmax update

% err =
% 
%     0.1250
% 
% 
% CONF =
% 
%    170     0     1     1     1     4     6     0     1     1
%      0   230     2     0     1     1     1     4     3     0
%      1     1   185     1     0     1     2    11     3     0
%      0     0     5   182     1     6     0     3    14     3
%      0     0     3     0   197     2     3     1     5    10
%      1     0     1     8     1   147     5     0     7     3
%      3     2     6     3     5     3   158     0     3     0
%      0     0     5     6     1     4     2   170     4    11
%      0     1     9     5     2     9     1     0   148     3
%      0     0     2     1     8     2     0    16     4   163

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

