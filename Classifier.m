function label = Classifier(kval, mu1 , s21 , p1, mu2, s22, p2, point)

    probability1 = zeros(1,3);
    probability2 = zeros(1,3);
       
    for i=1:kval
      probability1(1,i) = p1(i)*det(s21(:,:,i))^(-0.5)*exp(-0.5*sum((point'-mu1(:,i))'*inv(s21(:,:,i)).*(point'-mu1(:,i))',2));
    end
    
    probability1 = probability1./repmat(sum(probability1,2),1,kval);

    
    for i=1:kval
      probability2(1,i) = p2(i)*det(s22(:,:,i))^(-0.5)*exp(-0.5*sum((point'-mu2(:,i))'*inv(s22(:,:,i)).*(point'-mu2(:,i))',2));
    end

    probability2 = probability2./repmat(sum(probability2,2),1,kval);
    
    %Maximum Likelihood Criterion
    
    maxProb1 = max(probability1);
    maxProb2 = max(probability2);
    
    if maxProb1 < maxProb2
        label = 1;
    else
        label = 2;
    end