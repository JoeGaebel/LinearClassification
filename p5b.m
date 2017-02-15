clc;
iterations =  [100, 1000, 10000];
errors = [];
for i = iterations
    % Get samples and true classes for digits 4 and 9
    [X_out, Y_out] = p1(X_train_tiny, Y_train_tiny, 5, 10);
    
    % Generate a weight vector based on randomized iteratons
    w = p5(X_out, Y_out, i);
    
    % Generate classifications on samples
    C = p4(w, X_out);
    
    % Get error rate
    [err, ~] = p2(C, Y_out);
    errors = [errors, err];
end

errors

