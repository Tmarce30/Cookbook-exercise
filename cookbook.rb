require_relative 'recipe'
require 'csv'

class Cookbook
  def initialize(csv_file_path)
    @recipes = []
    @csv_file = csv_file_path
    CSV.foreach(csv_file_path) { |row| @recipes << Recipe.new(row[0], row[1], row[2]) }
  end

  def add(recipe)
    @recipes << recipe
    save_to_csv
  end

  def all
    @recipes
  end

  def find(index)
    @recipes[index]
  end

  def remove(index)
    @recipes.delete_at(index)
    save_to_csv
  end

  def empty?
    @recipes.empty?
  end

  private

  def save_to_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe]
      end
    end
  end
end
