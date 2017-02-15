function w = p6(X, Y, iterNum, wInit, alpha)
    Y(Y == 2) = 0;
    w = wInit;
    Z = [ones(size(X,1),1), X];

    for iteration = 1:iterNum
        w = w + alpha * calculateSum();
    end

    function theSum = calculateSum()
        C = w * Z;
        C = arrayfun(@(x) sigmoid(x), C);
        v = Y - C;
        V = repmat(v, 1, size(Z, 2));
        A = V.*Z;
        theSum = transpose(sum(A, 1));
    end
end
