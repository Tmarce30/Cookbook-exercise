class Cookbook
  def initialize
    @recipes = []
  end

  def add(recipe)
    @recipes << recipe
  end

  def all
    @recipes
  end

  def find(index)
    @recipes[index]
  end

  def remove(index)
    @recipes.delete_at[index]
  end
end
