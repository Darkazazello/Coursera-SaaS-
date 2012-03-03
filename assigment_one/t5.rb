class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's
    
    attr_reader attr_name+"_history" # create bar_history
    
    class_eval "def #{attr_name}=(value)
                  if @#{attr_name}_history == nil  
                    @#{attr_name}_history = Array.new
                    @#{attr_name}_history = [nil] 
                  end 
                  @#{attr_name}_history += [value] 
                  @#{attr_name} = value 
                end"
  end
end

class Foo
  attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1
f.bar = 234
puts f.bar_history
