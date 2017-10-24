File.open("novel.txt").each do |line|
  p line
end

File.open("brandnewfile.txt", "w") do |file|
  file.puts "creating a file from Rubay"
  file.write "No line break here!"
  file.puts "coolio"
end
#will overwrite everthing

File.open("brandnewfile.txt").each do |line|
   p line
 end

 File.open("brandnewfile.txt", "a") do |file|
   file.write "just appended it here"
 end

 File.open("brandnewfile.txt").each do |line|
    p line
  end

File.rename("brandnewfile.txt", "betterfile.txt")


File.delete("betterfile.txt")
p File.exist?("betterfile.txt")
