function C = multiClassLinearClassifier(W,X)
% This method performs linear classification in a multi-class setting
% Using a matrix of discriminate weight functions (W) and examples (X)

    C = zeros(size(X,1), 1);
    Z = [ones(size(X,1),1), X];
    
    for i = 1:size(X, 1)
        zRow = transpose(Z(i, :));
        zC = W * zRow;
        [~, index] = max(zC);
        C(i) = index;
    end
end