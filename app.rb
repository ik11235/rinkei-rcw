require 'yaml'

def output(id, name, description)
  puts "#{id}: #{name} #{description}"
end

RECIPE_PATH = './recipes.yml'

recipes = YAML.load_file(RECIPE_PATH)

recipe_id = ARGV[0]

if recipe_id
  i = recipe_id.to_i - 1
  recipe = recipes[i]
  output(recipe_id, recipe['name'], recipe['description'])
else
  recipes.each_with_index do |recipe, i|
    id = i + 1
    output(id, recipe['name'], recipe['description'])
  end
end
