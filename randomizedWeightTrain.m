function [w, error] = randomizedWeightTrain(X_train, Y_train, iterNum)
% This method weight trains a two class weight matrix based
% on randomized matrix generation, and optimizes for 
% best error rate given a number of iterations (iterNum)
    wRows = size(X_train, 2) + 1;
    error = inf;
    w = [];
    for i = 1:iterNum
        testW = randn(wRows, 1);
        C = twoClassLinearClassification(testW, X_train);
        [err, ~] = benchmarkClassification(C, Y_train);
        if err < error
            w = testW;
            error = err;
        end
    end
end