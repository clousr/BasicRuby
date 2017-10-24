hash={"tom"=> "patriots", "tony"=>"cowboys", "rob"=>"patriots"}
p hash


nba = {"cavs"=>["lebron","kevin","kyrie"], "warriors"=>["curry","durant","klay"]}
#hash keys
p nba["cavs"]
p nba["cavs"][1]
p nba["blue"]

p :name
p :name.methods
p "name".methods
p :name.methods.length
p "name".methods.length#takes up more memory

nba = {:cavs =>["lebron","kevin","kyrie"], :warriors =>["curry","durant","klay"]}

p nba [:cavs]
p :name.to_s
p "name".to_sym
p "school bus".to_sym#leaves the quotes bc of the space in the string

#retrieving values for keys not present
menu = {burger: 5.0, taco: 3.99, chips: 0.5}
p menu.fetch(:burger)
p menu.fetch(:salad, 5.3)#has to be :item not item:

#adding keys
menu[:sandwich]=3.0
menu [:taco]=2.99
p menu

menu.store(:sushi, 24.99)
p menu
#length & empty
p menu.length
p menu.empty?

#each
hash.each do |name, team|
  p name +" "+ team
end

hash.each do |onevar|
  p onevar[0] + " " + onevar[1]
end

#each_key and each_value
menu.each_key do |position|
  puts "thing"
  puts "#{position}"
end

menu.each_value do |value|
  puts value
end

#keys and values, returns an array
p menu.keys
p menu.values

#hash w default values
fruit= Hash.new(0)

fruit[:banana]=1.05
fruit[:strawberry]=2.4
fruit[:mango]=0.2

p fruit[:banana]
p fruit[:steak]# will return 0 instead of nil


#to array and back
p fruit
p fruit.to_a
p fruit.to_a.flatten
multid= fruit.to_a
p multid
p multid.to_h

#sort
p menu.sort#by keys
p menu.sort.reverse
p menu.sort_by {|item,price| price}

#key? and value?
p menu.key?(:taco)
p menu.value?(0.5)

#hash variables are preferred fo def
#order does not have to be maintained


#delete
p fruit
removed = fruit.delete(:banana)#only one key
p removed #stored only the value, not the key
p fruit

#select and reject
high = menu.select {|item, price| price>5}
low = menu.reject {|item, price| price>5}
p menu
p high
p low

#merge method
p menu.merge(fruit)
p menu # not permanent, duplicate keys from argument will be kept

market = {garlic: "3 cloves", tomatoes: "5 batches", milk:"100 gallons"}
kitchen = {bread: "2 loaves", yogurt: "20 cans", milk: "10 gallons"}

def merge(hash1, hash2)
  hashreturn = hash1.dup #will prevent overwrite bc this will mutate
  hash2.each do |key, value|
    hashreturn[key]=value
  end
 p hashreturn
end

merge(market,kitchen)
p market
p kitchen
