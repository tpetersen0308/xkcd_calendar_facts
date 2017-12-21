class CLI

  def self.call
    puts "--XKCD CALENDAR FACTS---"
    self.start
  end
  
  def self.start
    puts "Press <ENTER> to learn an interesting calendar fact!"
    puts "Any other key to exit."
    
    input = gets
    
    case input
    when "\n"
      FactGenerator.new.print_fact(FACTS)
      puts ""
      puts "Press <ENTER> to learn another interesting calendar fact!"
      puts "Any other key to exit."
      puts ""
    else
      puts "Thank you for stopping by :) we hope you learned something."
      puts "Visit xkcd.com for more!"
    end
  end
  
end