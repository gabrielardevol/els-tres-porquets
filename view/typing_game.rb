time1 = Time.now
# sleep(5)
time2 = nil
until time1.to_f - time2.to_f <= -5 do
  p time1.to_f - time2.to_f
  time2 = Time.now
end
