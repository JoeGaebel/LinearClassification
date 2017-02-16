clc;
iterations =  [100, 1000, 10000];
train_errors = [];
test_errors = [];

% Get samples and true classes for digits 4 and 9
[X_out, Y_out] = p1(X_train, Y_train, 5, 10);
[X_test_out, Y_test_out] = p1(X_test, Y_test, 5, 10);

for i = iterations
    % Generate a weight vector based on randomized iteratons
    w = p5(X_out, Y_out, i);
    
    % Generate classifications on samples
    Ctrain = p4(w, X_out);
    Ctest = p4(w, X_test_out);
    
    % Get error rate for training
    [train_err, ~] = p2(Ctrain, Y_out);
    [test_err, ~] = p2(Ctest, Y_test_out);
    
    % Append to accumulator
    train_errors = [train_errors, train_err];
    test_errors = [test_errors, test_err];
end

train_errors
test_errors

