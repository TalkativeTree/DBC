require 'benchmark'

def fib_iterative(desired_fib_num)
  fib_index_neg2 = 0
  fib_index_neg1 = 1
    fib_array = [0,1]
    while desired_fib_num > (fib_array.length - 1)
        fib_index_neg1 = fib_index_neg1 + fib_array[fib_index_neg2]
        fib_index_neg2 = fib_index_neg2 + 1
        fib_array << fib_index_neg1
    end 
    fib_array.last
end
 
 
 
 
def find_recursive(desired_fib)
   if desired_fib == 0 || desired_fib == 1
    return desired_fib
  else
 
   find_recursive(desired_fib- 1) + (find_recursive(desired_fib - 2))
  end
 
end
 
puts Benchmark.measure { fib_iterative(10) * 1_000_000} 
puts Benchmark.measure { find_recursive(10) * 1_000_000}

# =>  0.000000   0.000000   0.000000 (  0.000010)
# =>  0.000000   0.000000   0.000000 (  0.000030)
