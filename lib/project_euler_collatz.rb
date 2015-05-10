require 'pry'
def even_next(n)
	n/2
end

def odd_next(n)
	3*n +1
end

def next_value(n)
	n.even? ? even_next(n) : odd_next(n)
end

def collatz(n)
	total = n
	result = [n]
	until result.last == 1 do
		total = next_value(total)
		result << total
	end
	result
end

def longest_collatz
	longest_sequences = []
	longest_number = 0
	for i in 1..1000000
		collect = collatz(i)
		if longest_sequences.length < collect.length
			longest_sequences = collect
			longest_number = i
		end
	end
	longest_number
end
