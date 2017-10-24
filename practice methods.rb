names= ["Joe", "moe", "bob"]
def join(array, delimeter = "")
  joined=""
  array.each_with_index do |arr_item , i|
    joined << arr_item
    if i < array.length-1
      joined << delimeter
    elsif
      p joined
    end
  end
end

join(names,"-")

story = "In a galaxy far far away and long long ago" #count starting at 0, index position

def counter(string, search)#could use include?
  arr1=string.split("")
  arr2=search.split("")
  count=0
  arr1.each do |char1|
    arr2.each do |char2|
      count += 1 if char1==char2
    end
  end
  p count
end

counter(story,"an")
