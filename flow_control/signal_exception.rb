begin
  Process.kill("HUP", Process.pid)
  sleep
rescue SignalException => e
  puts "received Exception #{e}"
end
