
a = [12123,123,324,345,123,123]
b = [34,45,56,67,67,78]
c = Array.new(6) {Array.new(2) {0} }

for i in 0..5

		c[i][0] = a[i]
		c[i][1] = b[i]

end 

puts "#{c}"