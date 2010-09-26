require 'ftools'

rails_root=File.dirname(__FILE__)+"/../../../"
spring_file=File.dirname(__FILE__)+'/install_assets/springbeans.xml'

Dir.mkdir rails_root+"config/java" unless File.exist? rails_root+"config/java"
File.copy(spring_file, rails_root+'config/java',true) if rails_root+'config/java/springbeans.xml'

Dir.mkdir rails_root+"lib/jars" unless File.exist? rails_root+"lib/jars"

Dir.mkdir rails_root+"test/java" unless File.exist? rails_root+"test/java"
File.copy(spring_file, rails_root+'test/java',true) if rails_root+'test/java/springbeans.xml'

