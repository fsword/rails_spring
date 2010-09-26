require 'singleton'

module SpringSupport

  def get_bean name
    SpringContext.instance.get_bean name
  end

	def spring_refresh arg
	  SpringContext.instance.destroy.init arg
	end
	
	
	private
		class SpringContext

      include Singleton
      
			attr_accessor :container
			
			def initialize
			  if RAILS_ENV == 'production'
			  	self.container = org.springframework.context.support.ClassPathXmlApplicationContext.new("springbeans.xml")
		  	else
		  	  self.container = org.springframework.context.support.FileSystemXmlApplicationContext.new("test/java/springbeans.xml")
	  	  end

			end
			
			def get_bean name
				self.container.getBean(name)
			end
      
      def destroy
        self.container.destroy if self.container
        self
      end
      
      def init arg
	  	  self.container = org.springframework.context.support.FileSystemXmlApplicationContext.new arg
	  	  self
      end
		end
end

SpringSupport::SpringContext.instance


