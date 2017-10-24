#special array, comes in as strings
ARGV.each do |argument|
  number= argument.to_i
  p "square of #{number} is #{number ** 2}"
end
