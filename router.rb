require 'pry-byebug'

class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts '* WELCOME TO THE COOKBOOK *'
    puts "---------------------------"
    while @running
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts "What do you want to do ?"
    puts ""
    puts "1 - Display all the recipes"
    puts "2 - Create recipe"
    puts "3 - Remove recipe"
    puts "5 - Exit"
    puts "---------------------------"
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.destroy
    when 5 then @running = false
    else
      puts "Type 1, 2, 3, 4 or 5"
    end
  end
end
