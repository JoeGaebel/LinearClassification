% Get samples and true classes for digits 4 and 9
[X_out, Y_out] = p1(X_train_tiny, Y_train_tiny, 5, 10);

% Generate a weight vector based on randomized iteratons
wInit = ones(1, size(X_out, 1));
a = 0.1;

w = p6(X_out, Y_out, 30, wInit, alpha);

% Generate classifications on samples
C = p4(w, X_out);

% Get error rate
[err, ~] = p2(C, Y_out);
err


