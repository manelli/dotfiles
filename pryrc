begin
  require 'awesome_print'
  Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
  puts "no awesome_print :("
end

Pry.config.editor = 'vim'
Pry.config.prompt = [proc { ">> " }, proc { "?>" }]

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
