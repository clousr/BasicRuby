p "beggining"

require "./end"#./ is absolutely necessary
require "./end"#will not execute more than once, and !=needs.rb file extension like load
load "end.rb"#2nd output, needs.rb

require_relative "end"#./ is not necessary, will look in same dir as calling file
