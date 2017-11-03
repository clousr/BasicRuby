# all wrong redo
#K # #of pancakes that are flipped
#changes + to -
# T # of total pancakes
#+= happy

3 #Number of test cases
---+-++- 3 # row and size of flipper
+++++ 4
-+-+- 4

cases = 3
flipped = ["---+-++-", "+++++", "-+-+-"]
k = [3,4,4]

#section additions
# - = 0
#+ = 1
#iterate over and identify which sections need to be flipped x<k
# identify how many sections you have, length of flipped - k -1
# 0 to 3


def flipper(flipped, k)
  flipped.each_with_index do |cases , i|
    chararr = cases.chars
    numarr=[]
    chararr.each do |happy|
      if happy == "-" ? numarr << 0 : numarr << 1
      end
    end
    p numarr
    p numarr.length
    spatula = k[i]
    p spatula
    identifier = []

    numarr.each do |start|
      if sum+spatula < numarr.length
        identifier << numarr[start..start+spatula-1].sum
      end
    end
    p identifier
    #  end
    #end
  end
    #sum should = length of array
    #All of this is wrong
    #number of positions to flip is n-k+1
    #cant flip a position twice
    #potential of postion flipped or not flipped
    #code for 2^n-k+1 posibilties and choose the one with the lowest counter



end

flipper(flipped, k)
