function C = KNNClassifier(X,Y,X_test,k)
% This method performs K Nearest Neighbour classification
% Given the examples (X), their true class (Y), testing samples (X_test),
% and number of neighbours to consider k

    totalSamples = size(X, 1);
    totalNewSamples = size(X_test, 1);
    C = zeros(totalNewSamples, 1);

    for i = 1:totalNewSamples
        testRow = X_test(i, :);
        testMatrix = repmat(testRow,totalSamples,1);
        absDiff = abs(X-testMatrix);
        absDiff = absDiff.^2;
        dist = sum(absDiff,2);
        [~,I] = sort(dist);
        neighborsInd = I(1:k);
        neighbors = Y(neighborsInd);
        C(i, :) = mode(neighbors);
    end
end