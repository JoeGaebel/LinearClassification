function C = runNeuralClassification(net, X)
% Run only the classifier

    cMat = net(X);
    numberOfExamples = size(cMat, 2);
    C = zeros(numberOfExamples,1);
    for i = 1:size(cMat, 2)
        yCol = cMat(:,i);
        [~, index] = max(yCol);
        C(i, :) = index;
    end
end