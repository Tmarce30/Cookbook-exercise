require_relative 'cookbook'
require_relative 'recipe'
require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_cookbook
  end

  def create
    name = @view.ask_user_for_name
    description = @view.ask_user_for_description
    cooking_time = @view.ask_user_for_time
    recipe = Recipe.new(name, description, cooking_time)
    @cookbook.add(recipe)
    list
  end

  def destroy
  end

  private

  def display_cookbook
    cookbook = @cookbook.all
    @view.display(cookbook)
  end
end
