load('PB12.mat');
load('PB_data.mat');
J = f1;
J(:,2) = f2;

plot(J(:,1),J(:,2), ' .');