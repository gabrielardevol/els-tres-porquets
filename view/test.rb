time1 = Time.now
count = 0
time2 = nil

until time2.to_f - time1.to_f >= 17 do
  time2 = Time.now
  gets.chomp
  p count += 1
  p time2.to_f - time1.to_f
end
