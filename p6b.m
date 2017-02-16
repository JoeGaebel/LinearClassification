% Get samples and true classes for digits 4 and 9
[X_out, Y_out] = p1(X_train, Y_train, 5, 10);
[X_test_out, Y_test_out] = p1(X_test, Y_test, 5, 10);

% Generate a weight vector based on Logistic Regression
wInit = ones(size(X_out, 2) + 1, 1);
a = 0.1;
w = p6(X_out, Y_out, 30, wInit, alpha);

% Generate classifications on test and train samples
Ctrain = p4(w, X_out);
Ctest = p4(w, X_test_out);

% Get error rate
[train_err, ~] = p2(Ctrain, Y_out);
[test_err, ~] = p2(Ctest, Y_test_out);

test_err
train_err


% Errors for randomly generated w
% with 100, 1000, 10000 iterations
% 0.2273    0.1364    0.0909

% Errors for logistic regression with 30 iterations
% 0.0487