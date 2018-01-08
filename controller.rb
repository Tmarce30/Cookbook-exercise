require_relative 'cookbook'
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
  end

  def destroy
  end

  private

  def display_cookbook
    cookbook = @cookbook
    @view.display(cookbook)
  end
end
