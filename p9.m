function W = p9(X,Y,iterNum,wInit,alpha)
    numberOfClasses = max(Y);
    Z = [ones(size(X,1),1), X];
    W = wInit;
    
    for iteration = 1:iterNum
        for i = 1:size(X,1)
            Zi = Z(i, :);
            Yi = zeros(numberOfClasses, 1);
            trueRow = Y(i);
            Yi(trueRow) = 1;
            WZi = W * transpose(Zi);
            softWZi = softmax(WZi);
            
            inner = (Yi - softWZi) * Zi;
            W = W + alpha * inner;
        end 
    end
end