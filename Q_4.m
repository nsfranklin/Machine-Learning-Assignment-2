%Creating grid of points.
numperrow = 20;

x = linspace(190,1300, numperrow);
y = linspace(560,3610, numperrow);

gridVectors = zeros(numperrow*numperrow,2);

counter = 1;
for i = 1:numperrow
    for j = 1:numperrow
        gridVectors(counter,1) = x(i);
        gridVectors(counter,2) = y(j);
        counter = counter + 1;
    end
end

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

%Labeling the grid of data
Labels = Classify_SetQ4(k, mu1, s21, p1, mu2, s22, p2, gridVectors);

%loading labels into grid

grid = zeros(numperrow);
counter = 1;
for i = 1:numperrow
    for j = 1:numperrow
        grid(i,j) = Labels{counter,1};
        counter = counter + 1;
    end
end

disp(grid);

imagesc(grid);
