
v={}
v[1]=2.0
v[2]=-4.0
for i in 3..100
v[i]=111.0-(1130.0/v[i-1])+(3000.0/(v[i-1]*v[i-2]))
v[i].round(16)
end
puts "n=3,#{v[3]}"
puts "n=4,#{v[4]}"
puts "n=5,#{v[5]}"
puts "n=6,#{v[6]}"
puts "n=7,#{v[7]}"
puts "n=8,#{v[8]}"
printf("%16f",v[20])
puts "n=30,#{v[30]}"
puts "n=50,#{v[50]}"
puts "n=100,#{v[100]}"
