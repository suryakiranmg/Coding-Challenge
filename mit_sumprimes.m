%CODED IN MATLAB - Suryakiran M George
clc;clear all;
Num = 1632899; %123456th prime number found empirically
p = primes(Num);
sum = 0;
for count = 1:1:123456
sum = sum + p(count);
end
Sum_of_first_123456_primes = sum