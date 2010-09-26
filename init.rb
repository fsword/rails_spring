begin
  require 'java'
  require 'spring_support'
rescue Exception => e
  $stderr.puts "cannot load java classes - #{e.to_s}"
end
