fives = [5 , 10, 15, 20 ,25,30,35,40]
odd=[]
even=[]

def evenorodd(num)
  if num.even?
    true
  elsif num.odd?
    false
  end
end

fives.each do |arr_item|
  even << arr_item if evenorodd(arr_item)==true
  odd << arr_item if evenorodd(arr_item)==false
end

p odd
p even

#ternary operator for if and else, best option

shirt = ["red","white","blue","green"]
tie = ["striped","polka","plain"]

shirt.each do |shirt_arr_item|
  tie.each do |tie_arr_item|
    p "Should I wear a #{shirt_arr_item} shirt with a #{tie_arr_item} tie?"
  end
end

arr=[1,2,3,4,5]
arr2=[]
arr.each_with_index do |arr_item, i|
  product=arr_item*i
  arr2 << product
  p product.to_s + " product"
  p arr2.sum.to_s + " sum"
end

arr3=[-1,2,1,2,5,7,3]

def problem2(array)
  array.each_with_index do |arr_item,i|
    product=arr_item*i
    if i>arr_item
      p product
    elsif i<arr_item
      p "fail"
    end
  end
end

problem2(arr3)# do not need puts with a def, will also print the argument
