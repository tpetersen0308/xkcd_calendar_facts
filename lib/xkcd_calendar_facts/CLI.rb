class CLI
  
  def self.call
    display_menu
    input = gets
    case input
    when "\n"
      FactGenerator.new.print_fact(FACTS)
    else
      puts 'Hope you learned something! Goodbye!'
    end
  end
  
  def self.display_menu
    menu = <<-DOC
      Welcome to XKCD Calendar Facts!
      Hit <ENTER> to learn an interesting calendar fact!
      <press any other key to exit>
    DOC
    puts menu
  end
  
end