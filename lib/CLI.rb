class CLI
  
  def call
    display_menu
  end
  
  def display_menu
    menu = <<-DOC
      Welcome to XKCD Calendar Facts!
      Hit <ENTER> to learn an interesting calendar fact!
      <press any other key to exit>
    DOC
  end
  
end