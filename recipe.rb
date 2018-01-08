class Recipe
  attr_reader :name, :description, :cooking_time

  def initialize(name, description, cooking_time, has_been_done = false)
    @name = name
    @description = description
    @cooking_time = cooking_time
    @has_been_done = has_been_done
  end

  def has_been_done?
    @has_been_done
  end

  def mark_as_done!
    @has_been_done = true
  end
end
