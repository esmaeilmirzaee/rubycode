puts "Using %x"
res = %x(time)
puts res

puts "Using backticks"
res = `time \t`
puts res

puts "Using system"
res = system "time \t"
puts res

class Probe
  def deploy(deploy_time, return_time)
    puts "deploying"
  end
end

class MineralProbe < Probe
  def deploy(deploy_time)
    puts 'Preparing sample chamber'
    super()
  end
end

MineralProbe.new.deploy(Time.now)
