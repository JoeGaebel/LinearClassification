function errors = findErrorsForK(kValues, X, Y, X_test, Y_test)
% This is a helper method to generate a list of errors
% for multiple K values, using the KNN classifier

    errors = [];
    for k = kValues
        C = KNNClassifier(X, Y, X_test, k);
        [err, ~] = benchmarkClassification(C,Y_test);
        errors = [errors; err];
    end
end