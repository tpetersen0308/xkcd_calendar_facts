class FactGenerator
  attr_accessor :fact
  
  def initialize
    @fact = String.new
  end
  
  def random_path(arr)
    arr.each do |el|
      if el.class == String
        @fact += el
      elsif el.flatten.length != el.length
        unknown = el.sample
        random_path(unknown) if unknown.class == Array
        @fact += unknown if unknown.class == String
      else
        @fact += el.sample
      end
    end
  end
  
  def print_random_path
    puts @fact
  end
end