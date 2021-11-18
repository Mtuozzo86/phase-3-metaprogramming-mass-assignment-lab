require 'pry'

class Person
  def initialize(user)
    user.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

# binding.pry
