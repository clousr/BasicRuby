p Time.new
now = Time.new
p Time.now

before = Time.new(2015, 5, 18, 7, 30, 12)#changingtime zone?
p now.month
p now.day
p now.year
p now.hour
p now.min
p now.sec

p now.yday#day of year
p now.wday#day of week

p now.monday?
p now.friday?
# .between?(summer,wintr)
p now.to_s
p now.ctime
p now.to_a

p now.dst? #daylight savings

p (now-before)/(60*60*24)
time = Time.new(2015, 5, 18, 7, 30, 12)
p time
p time-5
p time-60*60

year = Time.now.year
p year

#this will be important due to monthly billing options
def doy(num)
  boy = Time.new(Time.new.year,1,1)
  one_day = 60*60*24
  until boy.yday == num
     boy += one_day
  end
  if boy.yday == num
    p boy
  end
end

doy(150)

#custom string from time strfrtime (google it)
