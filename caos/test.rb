hiding = 24
wolf_air = 3
wolf_blows = hiding -= wolf_air, wolf_air += 2

p hiding
p wolf_air

time1 = Time.now
time2 = nil
chomp_count = 0
p time1
until time2.to_f - time1.to_f >= 3
  time2 = Time.now
  gets.chomp
  chomp_count += 1
end
hiding += (chomp_count/3)
p hiding

#case hiding
#when 1 puts ""
      🧱
    🧱🧱🧱
 🧱🧱🧱🧱🧱
🧱🧱🧱🧱🧱🧱
🧱🧱     🧱🧱
🧱🧱🐷🐷🧱🧱
