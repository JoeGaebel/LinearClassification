function W = perceptronWeightTraining(X, Y, iterNum, wInit, alpha)
% This method uses the Perceptron single sample algorithm
% with a given number of iterations (iterNum) and initial weights (wInit)
% to train classifiers for a multi-class weight matrix.

    Z = [ones(size(X,1),1), X];
    W = wInit;
    
    for iteration = 1:iterNum
        for i = 1:size(X,1)
            Zi = Z(i, :);
            Yi = Y(i);
            WZi = W * transpose(Zi);
            c = Yi;
            [~, r] = max(WZi);
            loss = zeros(size(W));
            if c ~= r
               loss(r, :) = -1 .* Zi;
               loss(c, :) = Zi;
            end

            W = W + alpha * loss;
        end 
    end
end
