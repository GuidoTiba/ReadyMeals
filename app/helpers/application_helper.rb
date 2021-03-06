module ApplicationHelper
  def possible_searchs
    results = []
    results << Ingredient.all.pluck(:name).uniq
    results << Recipe.all.pluck(:name).uniq
    return results.flatten
  end
end
