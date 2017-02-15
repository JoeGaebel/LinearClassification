function C = p3(X,Y,X_test,k)
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