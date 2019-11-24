class Probe
  def deploy(deploy_time, return_time)
    puts "Deploying at #{deploy_time}"
  end
end

class SubProbe < Probe
  def deploy(deploy_time)
    puts "Under deploying at #{deploy_time}"
  end
end

SubProbe.new.deploy(Time.now)
