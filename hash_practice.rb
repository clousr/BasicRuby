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

story = "In a galaxy far far away and long long ago"
#return a hash keys= words value=# of times used, ignore spaces
def word_count(string)
   words=string.split()
   unique=words.uniq
   amount={}
   unique.each do |word|
     amount[word.to_sym]=words.count(word)
   end
   p amount
end

word_count(story)
