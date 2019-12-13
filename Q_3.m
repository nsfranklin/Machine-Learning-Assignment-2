%Loading in combind dataset
phonemex = 1;
phonemey = 2;
temp1 = [phno,J];
temp2 = [phno,J];
temp1((temp1(:,1) ~= phonemex), :) = [];
temp2((temp2(:,1) ~= phonemey), :) = [];
pointsToClassify = [temp1;temp2];

%Loading in model 1 values

load('ph1k3mu.mat')
load('ph1k3p.mat')
load('ph1k3s2.mat')

mu1 = mu;
p1 = p;
s21 = s2;

%Loading in model 2 values

load('ph2k3mu.mat')
load('ph2k3p.mat')
load('ph2k3s2.mat')

mu2 = mu;
p2 = p;
s22 = s2;

k = 3;

[Labelsk3, accuracyk3] = Classify_Set(k, mu1, s21, p1, mu2, s22, p2, pointsToClassify, phonemex, phonemey);

disp(1-accuracyk3);

%Loading in model 1 values

load('ph1k6mu.mat')
load('ph1k6p.mat')
load('ph1k6s2.mat')

mu1 = mu;
p1 = p;
s21 = s2;

%Loading in model 2 values

load('ph2k6mu.mat')
load('ph2k6p.mat')
load('ph2k6s2.mat')

mu2 = mu;
p2 = p;
s22 = s2;

k = 6;

[Labelsk6, accuracyk6] = Classify_Set(k, mu1, s21, p1, mu2, s22, p2, pointsToClassify, phonemex, phonemey);

disp(1-accuracyk6)