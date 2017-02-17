% Define kValues to iterate over
kValues = [1, 3, 5, 7];

% Run helper
errors = findErrorsForK(kValues, X_train, Y_train, X_test, Y_test)

% errors =
% 
%     0.0835
%     0.0790
%     0.0850
%     0.0885
