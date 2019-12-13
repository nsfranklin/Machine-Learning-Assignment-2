function predictedLabels = Classify_SetQ4(k, mu1, s21, p1, mu2, s22, p2, pointsToClassify)

predictedLabels = {};

for x = 1:size(pointsToClassify,1)
   predictedLabels{x,1} = Classifier(k, mu1, s21, p1, mu2, s22, p2, pointsToClassify(x,:));
end

   
