% By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

fibonnacci(1) = 0;
fibonnacci(2) = 1;
sum = 0;
i = 2;
while fibonnacci(end) < 4e6
  i = i + 1;
  fibonnacci(i) = fibonnacci(i-2) + fibonnacci(i-1);
  
  if (mod(fibonnacci(i),2) == 0)
      sum = sum + fibonnacci(i);
  end
end

display(sum)