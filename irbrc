begin
  require 'awesome_print'
  AwesomePrint.irb!
rescue LoadError
end

IRB.conf[:PROMPT_MODE] = :SIMPLE

class Object
  def own_methods
    common_methods = case self.class
                     when Class
                       Object.public_methods
                     when Module
                       Module.public_methods
                     else
                       Object.new.public_methods
                     end

    (public_methods - common_methods).sort
  end
end
