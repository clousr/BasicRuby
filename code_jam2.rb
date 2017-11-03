#toys small to large
#pencils short to long
#computers old to new
#tidy numbers
testcase = [132, 1000, 7, 1111111111111110]
cases = testcase.length

def tidy(cases, testcase)
  testcase.each do |tested|#set range
    range = 1..tested
    p range
    counter = 0
    range.each do |n|# for each number split into an array of chars
      split = n.to_s.chars
      tf = []
      p
      split.each_with_index do |n1, i|#for each char see if it is less than or equal to the next item
        if split.length == 1
          tf << true
        end
        if  split.length > 1 && i+1 < split.length
          if n1 <= split[i+1] ? tf << true : tf << false
          end
        elsif i+1 == split.length && split.length > 1
          if n1 >= split[i-1]? tf << true : tf << false
          end
        end
      end
      if tf.all?{|n| n==true}
        counter +=1
      end
    end
    p counter
  end
end

tidy(cases, testcase)
77
