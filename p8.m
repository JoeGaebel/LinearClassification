function W = p8(X, Y, iterNum, wInit, alpha)
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
