class XKCDCalendarFacts::CLI
  
  def call
    display_menu
    input = gets
    case input
    when '\n'
      XKCDCalendarFacts::FactGenerator.print_fact
    else
      puts 'Hope you learned something! Goodbye!'
    end
  end
  
  def display_menu
    menu = <<-DOC
      Welcome to XKCD Calendar Facts!
      Hit <ENTER> to learn an interesting calendar fact!
      <press any other key to exit>
    DOC
    puts menu
  end
  
end