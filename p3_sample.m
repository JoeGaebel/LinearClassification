X = [1 2; -1 4; 3 2; 1 7; 3 5; 4 6; 9 8];


%X =
% 
%      1     2
%     -1     4
%      3     2
%      1     7
%      3     5
%      4     6
%      9     8
%      

Y = [4; 1 ; 3; 2; 3; 3; 1];

% Y =
% 
%      4
%      1
%      3
%      2
%      3
%      3
%      1

X_new = [4 5; 1 3];

% 
% X_new =
% 
%      4     5
%      1     3

kValues = [1, 3, 5, 7];

%C = classifyKnn(X,Y,X_new,1)
% C = classifyKnn(X_train_tiny,Y_train_tiny,X_test_tiny,1)
% T = Y_test_tiny
% [err,CONF] = p2(C,T)


% 
% C =
% 
%      3
%      4

% findErrorsForK(kValues, X, Y, X_test, Y_test)
% errors = findErrorsForK(kValues, X_train, Y_train, X_test, Y_test)
C = p3(X_train, Y_train, X_test, 5);
[~, CONF] = p2(C, Y_test)