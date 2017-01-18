x="hello world" 
# string comparison
if x == "hello"
  puts "equal"
else
  puts "not equal"
end
y = 'bc'
if x < y
  puts "#{x} is lexicographically less than #{y}"
else
  puts "#{x} is not lexicographically less than #{y}"
end
# check if empty
if x.empty?
  puts "is empty"
end

# replace bytes
p y = "hello world".tr("l", "L")
 
# join strings
a = "hel"
b = "lo w"
c = "orld"
p d = a + b + c
