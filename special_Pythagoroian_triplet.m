%A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

% a^2 + b^2 = c^2
% For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
% There exists exactly one Pythagorean triplet for which a + b + c = 1000.
% Find the product abc.

for a = 1 : 998
    for b = a+1 : 999
        for c = b+1 : 1000
            if (a^2 + b^2 == c^2)
                if (a + b + c == 1000)
                    X = [ a b c];
                    break;
                end
            end
        end
    end
end

dislpay(prod(X));