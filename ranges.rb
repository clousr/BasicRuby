
nums = 1..5

p nums.class
puts nums.first
p nums.last
p nums.last.class
p nums.first(3)
p nums.last(3)
p nums.first(1)
p nums.first(3).class
p nums.first(1).class
puts (1..10).first(3)


az= 'a'..'z'
AZ= "A".."Z"
Az= "A".."z"

p az.first(26)
p nums.size
p az.size#error if "" used, nil is '' used for string array
p az.count
p AZ.count

p az.include?("c")
p az.include?('c')
#triple equals= include?
p az === "c"

p rand
p rand.round(3)
p rand(101)#includes 100 but not 101
p rand(nums)
