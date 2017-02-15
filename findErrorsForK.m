function errors = findErrorsForK(kValues, X, Y, X_test, Y_test)
errors = [];
for k = kValues
    C = classifyKnn(X, Y, X_test, k);
    [err, ~] = p2(C,Y_test);
    errors = [errors; err];
end
end