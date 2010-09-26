require 'ftools'

rails_root=File.dirname(__FILE__)+"/../../../"
asset=File.dirname(__FILE__)+'/install_assets/'

Dir.mkdir rails_root+"config/java" unless File.exist? rails_root+"config/java"
File.copy(asset+'springbeans.xml', rails_root+'config/java',true) unless File.exist? rails_root+'config/java/springbeans.xml'

Dir.mkdir rails_root+"lib/jars" unless File.exist? rails_root+"lib/jars"

Dir.mkdir rails_root+"test/java" unless File.exist? rails_root+"test/java"
File.copy(asset+'springbeans.xml', rails_root+'test/java',true) unless File.exist? rails_root+'test/java/springbeans.xml'

%w{jruby-console jruby-server start.sh}.each{|file|
  File.copy(asset+file, rails_root+'script',true) unless File.exist? rails_root+'script/'+file
}
