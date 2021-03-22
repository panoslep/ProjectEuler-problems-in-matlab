% 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
% What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

for i = 20 : 20 : 1*2*3*4*5*6*7*8*9*10*11*12*13*14*15*16*17*18*19*20
    if (mod(i, 19) == 0) && (mod(i, 18) == 0) && (mod(i, 17) == 0) && ...
            (mod(i, 16) == 0) && (mod(i, 15) == 0) && (mod(i, 14) == 0) && ...
            (mod(i, 13) == 0) && (mod(i, 12) == 0) && (mod(i, 11) == 0) && ...
            (mod(i, 10) == 0) && (mod(i, 9) == 0) && (mod(i, 8) == 0) && ...
            (mod(i, 7) == 0) && (mod(i, 6) == 0) && (mod(i, 5) == 0) && ...
            (mod(i, 4) == 0) && (mod(i, 3) == 0) && (mod(i, 2) == 0)
    
            num = i;
            break;
    end  
end

display(num);