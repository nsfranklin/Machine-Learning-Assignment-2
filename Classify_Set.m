function [predictedLabels, accuracy] = Classify_Set(k, mu1, s21, p1, mu2, s22, p2, pointsToClassify, label1, label2)

predictedLabels = {};

for x = 1:size(pointsToClassify,1)
   predictedLabels{x,1} = Classifier(k, mu1, s21, p1, mu2, s22, p2, pointsToClassify(x,2:3));
end


correctCounter = 0; 

for y = 1:size(pointsToClassify,1)
    if predictedLabels{y,1} == 1;
        if pointsToClassify(x,1) == label1
            correctCounter = correctCounter + 1;
        end
    else
        if pointsToClassify(x,1) == label2
            correctCounter = correctCounter + 1;
        end
    end
end

accuracy = correctCounter/size(pointsToClassify,1);   


