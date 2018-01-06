class Recipe
  attr_reader :name, :description, :cooking_time

  def initialize(name, description, cooking_time)
    @name = name
    @description = description
    @cooking_time = cooking_time
  end
end
