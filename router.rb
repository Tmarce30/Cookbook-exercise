class Router
  def initialize(controller)
    @controller = controller
    @unning = true
  end

  def run
    puts 'WELCOME TO THE COOKBOOK !'
    puts "---------------------------"
    print_actions
    action = gets.chomp
    dispatch
  end

  private

  def print_actions
    puts "What do you want to do ?"
    puts ""
    puts "1 - Display all the recipes"
    puts "5 - Exit"
    puts "---------------------------"
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 5 then @running = false
  end
end
