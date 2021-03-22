% difference between the sum of the squares of the first one hundred natural numbers and 
% the square of the sum.

sumSquare = 0;
squareSum = 0;
for i = 1 : 100
    sumSquare = sumSquare + i^2;
    squareSum = squareSum + i;

end

diff = squareSum^2 - sumSquare;
display(diff);