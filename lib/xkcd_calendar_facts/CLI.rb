class CLI

  def self.call
    puts "--XKCD CALENDAR FACTS---"
    self.start
  end
  
  def self.start
    puts "Press <ENTER> to learn an interesting calendar fact!"
    puts "Any other key to exit."
    
    input = gets
    
    self.menu(input)
  end
  
  def self.menu(input)
    case input
    when "\n"
      FactGenerator.new.print_fact(FACTS)
      puts ""
      puts "Press <ENTER> to learn another interesting calendar fact!"
      puts "Any other key to exit."
      puts ""
      input = gets
      self.menu(input)
    else
      puts "Thank you for stopping by :) we hope you learned something."
      puts "Visit xkcd.com for more!"
    end
  end
  
  
end