function C = twoClassLinearClassification(w,X)
% This method performs classification of a two class problem
% with weight vector (w) and examples (X)

    z = [ones(size(X,1),1), X];
    C = z * w;
    C(C >= 0) = 1;
    C(C < 0) = 2;
end

