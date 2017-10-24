nums= [1,4,7,5,3,6,9,7]
p nums
puts nums
lett= ["t","e","f"]
random = [4, true, "hello", 10.99]
#multidimensional array
multid = [["me", 25,true],["you",24,true],["them"] ]
p multid

# new string array
names = %w[jack jill john anna]
p names

p Array.new(5, [1,2,3])
p names[0]
p names.last
p names[-1]
p names.[](2)
#fetch
p names[100]
#names.fetch(100) will throw error
p names.fetch(100, "not here")

p nums [2,5]
p nums [2,2]
p nums [2,100]
p nums [2..5]

p names.values_at(0,2, 1)

#slice method, identical as square brackets
p nums.slice(3)

nums[1]=100
p nums
nums[0..1]=[0,1]
p nums
nums[0..1]=[23]
p nums
nums[10]=20 #at index 10 put 20
p nums
p multid.length
p multid.size
p nums.count(7)
puts [].empty?


p nums.first
p nums.first(1)
p nums.first.class
p nums.first(1).class

#must method same as .append
names.push("alex", "mary")
p names
names <<  "hunter"
p names
names.insert(2,"bastard")
p names
name_pop1=names.pop#removes last one
p names
p name_pop1 #will return a # if pop is not given an argument
name_pop2=names.pop(3)#will always retun an array
p names
p name_pop2

#shift same as prepend
name_pop2.shift
p name_pop2
name_pop2.unshift("james")
p name_pop2
name_pop2.shift(2)
p name_pop2

#spaceshpip
p [3,4,5]<=>[3,4,5]
p [3,4,5]<=>[5,3,4]

#to_a method
az="a".."z"
p az
p az.to_a

#each
p names
names.each do |arr_item|#known as iterator variable or block variable(not available after function)
  p "hey you ,#{arr_item}"
  arr_item.upcase#nonmutable
end

p names
shirt = ["red","white","blue","green"]
tie = ["striped","polka","plain"]

shirt.each do |shirt_arr_item|
  tie.each do |tie_arr_item|
    p "Should I wear a #{shirt_arr_item} shirt with a #{tie_arr_item} tie?"
  end
end

#the for loop
for new_variable in shirt
  puts new_variable
end

puts new_variable#takes the last item in array

#each with index
shirt.each_with_index do |arr_item, index|
  p "index number#{index}"
  p "color#{arr_item}"
end


#map and collect, returns a new array
p nums
nums.compact!#removes nil
p nums
squares = nums.map{|arr_item| arr_item**2}
p squares

#break method'
prize = ["pyrite","pyrite","pyrite","gold""pyrite","pyrite", "gold"]

prize.each do |gold|
  if gold == "gold"
    p "I found gold"
    break
  elsif gold != "gold"
    p "shit"
  end
end

#next
mix = [1,2,3,4,5, "we", 7, nil, 7,[]]
mix.each do |arr_item|
  if arr_item.is_a?(Numeric)==false
    next
  else
    puts arr_item**2
  end
end

#reverse
p mix.reverse

#sort
p nums
p nums.sort

#concat
shirt.concat(tie)#modifies original array, use dup to prevent
p shirt

#max and min
p squares.max
p shirt.min

#include
p shirt.include?("blue")

#index and find
p nums
p nums.index(7)
p nums.index(100)


#select
more = nums.select do |i|
  i > 10#can use anything
end
p more

#reject
nums[15]=25
p nums
p nums.reject! {|i| i== nil } #bang method for permanence
p nums

#partition
more,less= nums.partition{|i| i>10}
p nums
p more
p less

#unpacking multidimensional array
p multid
p multid[0][1]
a,b,c=multid
p a
p b
p c

#split method, splits at certain object default is space, returs array
sentance= "here is an example sentance. Here is another"
p sentance.split
p sentance.split("")
p sentance.chars
p sentance

#each character
hello= "hello"
hello.each_char {|char| puts char}

#join
p shirt
p shirt.join
p shirt.join("--")


#any & all
p nums.any?{|n| n.even?}
p nums.all?{|n| n.even?}


#detect or find
p nums.find {|n| n==7}

#uniqu method
p nums
p nums.uniq#needs bang

#compact method
#rmoves nils


#inject or reduce method, uses previous value of the loop for next calc
#0 is the starting previous
result= nums.reduce(0) do |previous, current|
  p "previous #{previous}"
  p "current #{current}"
  previous+current
end
p result
 #flatten method removes the dimensions
 p multid
 p multid.flatten

 #zip method
stock=["goog", "abc", "ptn"]
prediction=[1,3,40]
p stock.zip(prediction)

#sample method, random select
p names.sample
p names.sample(3)

#multiplication
p stock*3
p prediction*3
p "ruby"*3

#union
p [1,2,3,4,5] | [2,3,4,5,6,4,7]

#subtraction
p [1,1,2,2,3,3,3,4,5,6]-[2,3]

#array intersection
p [1,1,2,2,3,3,3,4,5,6] & [2,3,10,4,34]
