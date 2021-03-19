% A palindromic number reads the same both ways. 
% Find the largest palindrome made from the product of two 3-digit numbers.


max = 0;
imax = 0;
jmax = 0;
for i = 100 : 999
    for j = 100 : 999
        prod = i * j;
        if (prod > max)
            rev_prod = str2num(fliplr(num2str(prod)));
            if (prod == rev_prod )
                max = prod;
                imax = i;
                jmax = j;
            end
        end
    end
end

% display result:
display(max);
