function [w, error] = p5(X_train, Y_train, iterNum)
    wRows = size(X_train, 2) + 1;
    error = inf;
    w = [];
    for i = 1:iterNum
        testW = randn(wRows, 1);
        C = p4(testW, X_train);
        [err, ~] = p2(C, Y_train);
        if err < error
            w = testW;
            error = err;
        end
    end
end