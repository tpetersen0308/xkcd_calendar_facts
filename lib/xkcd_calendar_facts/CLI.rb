class CLI

  def self.call
    puts ""
    puts "------------------XKCD CALENDAR FACTS-------------------"
    self.start
  end
  
  def self.start
    puts "--------------------------------------------------------"
    puts "--Press <ENTER> to learn an interesting calendar fact!--"
    puts "--Enter anything else to exit..."
    
    input = gets
    
    self.menu(input)
  end
  
  def self.menu(input)
    case input
    when "\n"
      FactGenerator.new.print_fact(FACTS)
      puts ""
      puts "--Press <ENTER> to learn another interesting calendar fact!"
      puts "--Enter anything else to exit..."
      puts ""
      input = gets
      self.menu(input)
    else
      puts "--Wow, we sure just learned a lot!"
      puts "--Visit xkcd.com for more :)"
      puts "--Goodbye!"
    end
  end
  
end