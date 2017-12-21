class FactGenerator
  attr_accessor :fact
  
  def initialize
    @fact = String.new
  end
  
  def generate_fact(arr)
    arr.each do |el|
      if el.class == String
        @fact += el
      elsif el.flatten.length != el.length
        unknown = el.sample
        generate_fact(unknown) if unknown.class == Array
        @fact += unknown if unknown.class == String
      else
        @fact += el.sample
      end
    end
  end
  
  def print_fact(arr)
    self.generate_fact(arr)
    puts self.fact
  end
end